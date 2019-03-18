#include "llvm/ADT/Statistic.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Analysis/BranchInstCount/BICinit.h"
#include "llvm/Pass.h"

using namespace llvm;

#define DEBUG_TYPE "BranchInstCount"

// Branch Instruction Counting
STATISTIC(NumCondBranch, "Number of conditional branches in the program");
STATISTIC(NumUncondBranch, "Number of unconditional branches in the program");
STATISTIC(NumEqBranch,
          "Number of conditional branches whose comparison type is equal test");
STATISTIC(NumGTBranch, "Number of conditional branches whose comparison type "
                       "is greater than test");
STATISTIC(
    NumLTBranch,
    "Number of conditional branches whose comparison type is less than test");

namespace {
class BranchInstCount : public BasicBlockPass {
  void conditionalBranchAnalyze(CmpInst *cmp_inst);
  void branchAnalyze(BranchInst *branch_inst);

public:
  static char ID;
  BranchInstCount() : BasicBlockPass(ID) {
    initializeBranchInstCountPass(*PassRegistry::getPassRegistry());
  }

  virtual bool runOnBasicBlock(BasicBlock &BB) override;

  virtual void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.setPreservesAll();
  }
};
} // namespace

/* Check type of conditional branch */
void BranchInstCount::conditionalBranchAnalyze(CmpInst *instruction) {
  if (!instruction)
    return;

  //              Opcode       U L G E    Intuitive operation
  switch (instruction->getPredicate()) {
  case CmpInst::FCMP_OGT: ///< 0 0 1 0    True if ordered and greater than
  case CmpInst::FCMP_OGE: ///< 0 0 1 1    True if ordered and greater than or
                          ///< equal
  case CmpInst::FCMP_UGT: ///< 1 0 1 0    True if unordered or greater than
  case CmpInst::FCMP_UGE: ///< 1 0 1 1    True if unordered, greater than, or
                          ///< equal
  case CmpInst::ICMP_UGT: ///< unsigned greater than
  case CmpInst::ICMP_UGE: ///< unsigned greater or equal
  case CmpInst::ICMP_SGT: ///< signed greater than
  case CmpInst::ICMP_SGE: ///< signed greater or equal
    ++NumGTBranch;
    break;
  case CmpInst::FCMP_OLT: ///< 0 1 0 0    True if ordered and less than
  case CmpInst::FCMP_OLE: ///< 0 1 0 1    True if ordered and less than or equal
  case CmpInst::FCMP_ULT: ///< 1 1 0 0    True if unordered or less than
  case CmpInst::FCMP_ULE: ///< 1 1 0 1    True if unordered, less than, or equal
  case CmpInst::ICMP_ULT: ///< unsigned less than
  case CmpInst::ICMP_ULE: ///< unsigned less or equal
  case CmpInst::ICMP_SLT: ///< signed less than
  case CmpInst::ICMP_SLE: ///< signed less or equal
    ++NumLTBranch;
    break;
  case CmpInst::FCMP_OEQ: ///< 0 0 0 1    True if ordered and equal
  case CmpInst::FCMP_UEQ: ///< 1 0 0 1    True if unordered or equal
  case CmpInst::ICMP_EQ:  ///< equal
    ++NumEqBranch;
    break;
  default:
    break;
  }
}

/* Check type of branch */
void BranchInstCount::branchAnalyze(BranchInst *instruction) {
  if (!instruction)
    return;

  if (instruction->isConditional()) {
	++NumCondBranch;
	conditionalBranchAnalyze(dyn_cast<CmpInst>(instruction->getCondition()));
  } else {
	++NumUncondBranch;
  }
}

bool BranchInstCount::runOnBasicBlock(BasicBlock &BB) {
  for (Instruction &I : BB) {
    branchAnalyze(dyn_cast<BranchInst>(&I));
  }
  return false;
}

char BranchInstCount::ID = 0;

INITIALIZE_PASS(
    BranchInstCount, "BranchInstCount",
    "Count the number of conditional branches and unconditional branches in "
    "a program",
    true, true)

BasicBlockPass *llvm::createBranchInstCountPass() {
  return new BranchInstCount();
}