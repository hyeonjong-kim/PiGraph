# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.16

# SRC_FILES at src/core/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/IPoIB/src/core/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/IPoIB/src/core/Vertex.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/IPoIB/build/CMakeFiles/cmake.verify_globs")
endif()

# SRC_FILES at src/network/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/IPoIB/src/network/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/IPoIB/src/network/tcp.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/IPoIB/build/CMakeFiles/cmake.verify_globs")
endif()

# SRC_FILES at src/query/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/IPoIB/src/query/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/IPoIB/src/query/PageRank.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/IPoIB/build/CMakeFiles/cmake.verify_globs")
endif()

# SRC_FILES at src/tools/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/hjkim/PiGraph/IPoIB/src/tools/*.cpp")
set(OLD_GLOB
  "/home/hjkim/PiGraph/IPoIB/src/tools/Parser.cpp"
  "/home/hjkim/PiGraph/IPoIB/src/tools/ThreadPool.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/hjkim/PiGraph/IPoIB/build/CMakeFiles/cmake.verify_globs")
endif()
