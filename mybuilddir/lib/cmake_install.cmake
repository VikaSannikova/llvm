# Install script for directory: C:/tetsLLVM/llvm/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/LLVM")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/tetsLLVM/llvm/mybuilddir/lib/IR/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/FuzzMutate/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/IRReader/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/CodeGen/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/BinaryFormat/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Bitcode/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Transforms/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Linker/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Analysis/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/LTO/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/MC/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/MCA/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Object/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/ObjectYAML/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Option/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/OptRemarks/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/DebugInfo/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/ExecutionEngine/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Target/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/AsmParser/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/LineEditor/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/ProfileData/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Passes/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/TextAPI/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/ToolDrivers/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/XRay/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Testing/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/WindowsManifest/cmake_install.cmake")

endif()

