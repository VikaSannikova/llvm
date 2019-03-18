# Install script for directory: C:/tetsLLVM/llvm

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xllvm-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "C:/tetsLLVM/llvm/include/llvm"
    "C:/tetsLLVM/llvm/include/llvm-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.td$" REGEX "/[^/]*\\.inc$" REGEX "/license\\.txt$" REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xllvm-headersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "C:/tetsLLVM/llvm/mybuilddir/include/llvm"
    "C:/tetsLLVM/llvm/mybuilddir/include/llvm-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.gen$" REGEX "/[^/]*\\.inc$" REGEX "/cmakefiles$" EXCLUDE REGEX "/config\\.h$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Demangle/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/Support/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/TableGen/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/TableGen/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/include/llvm/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/lib/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/FileCheck/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/PerfectShuffle/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/count/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/not/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/yaml-bench/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/LLVMVisualizers/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/projects/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/tools/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/runtimes/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/examples/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/lit/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/test/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/unittests/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/unittest/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/KillTheDoctor/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/docs/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/cmake/modules/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/llvm-lit/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/utils/benchmark/cmake_install.cmake")
  include("C:/tetsLLVM/llvm/mybuilddir/benchmarks/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/tetsLLVM/llvm/mybuilddir/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
