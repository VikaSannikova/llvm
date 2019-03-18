add_llvm_library( LLVMBranchInstCount MODULE
  BranchInstCount.cpp
  BICinit.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )