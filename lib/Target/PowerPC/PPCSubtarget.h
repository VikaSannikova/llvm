//=====-- PPCSubtarget.h - Define Subtarget for the PPC -------*- C++ -*--====//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by Nate Begeman and is distributed under the
// University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file declares the PowerPC specific subclass of TargetSubtarget.
//
//===----------------------------------------------------------------------===//

#ifndef POWERPCSUBTARGET_H
#define POWERPCSUBTARGET_H

#include "llvm/Target/TargetInstrItineraries.h"
#include "llvm/Target/TargetSubtarget.h"

#include <string>

namespace llvm {
class Module;

class PPCSubtarget : public TargetSubtarget {
protected:
  /// stackAlignment - The minimum alignment known to hold of the stack frame on
  /// entry to the function and which must be maintained by every function.
  unsigned StackAlignment;
  
  /// Selected instruction itineraries (one entry per itinerary class.)
  InstrItineraryData InstrItins;

  /// Used by the ISel to turn in optimizations for POWER4-derived architectures
  bool IsGigaProcessor;
  bool Is64Bit;
  bool Has64BitRegs;
  bool HasAltivec;
  bool HasFSQRT;
  bool HasSTFIWX;
  bool IsAIX;
  bool IsDarwin;
public:
  /// This constructor initializes the data members to match that
  /// of the specified module.
  ///
  PPCSubtarget(const Module &M, const std::string &FS);
  
  /// ParseSubtargetFeatures - Parses features string setting specified 
  /// subtarget options.  Definition of function is auto generated by tblgen.
  void ParseSubtargetFeatures(const std::string &FS, const std::string &CPU);

  /// getStackAlignment - Returns the minimum alignment known to hold of the
  /// stack frame on entry to the function and which must be maintained by every
  /// function for this subtarget.
  unsigned getStackAlignment() const { return StackAlignment; }
  
  /// getInstrItins - Return the instruction itineraies based on subtarget 
  /// selection.
  const InstrItineraryData getInstrItineraryData() const { return InstrItins; }
  

  bool hasFSQRT() const { return HasFSQRT; }
  bool hasSTFIWX() const { return HasSTFIWX; }
  bool has64BitRegs() const { return Has64BitRegs; }
  bool hasAltivec() const { return HasAltivec; }
  
  bool isAIX() const { return IsAIX; }
  bool isDarwin() const { return IsDarwin; }
  bool is64Bit() const { return Is64Bit; }
  bool isGigaProcessor() const { return IsGigaProcessor; }
};
} // End llvm namespace

#endif
