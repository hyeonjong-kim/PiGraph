# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.19
cmake_policy(SET CMP0009 NEW)

# SRC_FILES1 at /home/hjkim/PiGraph/lib/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/lib/../src/utils/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/lib/../src/utils/ArgParsing.cpp"
  "/home/hjkim/PiGraph/lib/../src/utils/ThreadPool.cpp"
  "/home/hjkim/PiGraph/lib/../src/utils/tinystr.cpp"
  "/home/hjkim/PiGraph/lib/../src/utils/tinyxml.cpp"
  "/home/hjkim/PiGraph/lib/../src/utils/tinyxmlerror.cpp"
  "/home/hjkim/PiGraph/lib/../src/utils/tinyxmlparser.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/module/CMakeFiles/cmake.verify_globs")
endif()

# SRC_FILES2 at /home/hjkim/PiGraph/lib/CMakeLists.txt:10 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/lib/../src/zk/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/lib/../src/zk/zkTools.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/module/CMakeFiles/cmake.verify_globs")
endif()
