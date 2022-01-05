# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hjkim/PiGraph/Tools/rdmaTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hjkim/PiGraph/Tools/rdmaTest/build

# Include any dependencies generated for this target.
include src/tools/CMakeFiles/tools.dir/depend.make

# Include the progress variables for this target.
include src/tools/CMakeFiles/tools.dir/progress.make

# Include the compile flags for this target's objects.
include src/tools/CMakeFiles/tools.dir/flags.make

src/tools/CMakeFiles/tools.dir/Parser.cpp.o: src/tools/CMakeFiles/tools.dir/flags.make
src/tools/CMakeFiles/tools.dir/Parser.cpp.o: ../src/tools/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/Tools/rdmaTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tools/CMakeFiles/tools.dir/Parser.cpp.o"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/Parser.cpp.o -c /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/Parser.cpp

src/tools/CMakeFiles/tools.dir/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/Parser.cpp.i"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/Parser.cpp > CMakeFiles/tools.dir/Parser.cpp.i

src/tools/CMakeFiles/tools.dir/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/Parser.cpp.s"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/Parser.cpp -o CMakeFiles/tools.dir/Parser.cpp.s

src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.o: src/tools/CMakeFiles/tools.dir/flags.make
src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.o: ../src/tools/ThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/Tools/rdmaTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.o"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tools.dir/ThreadPool.cpp.o -c /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/ThreadPool.cpp

src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tools.dir/ThreadPool.cpp.i"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/ThreadPool.cpp > CMakeFiles/tools.dir/ThreadPool.cpp.i

src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tools.dir/ThreadPool.cpp.s"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/Tools/rdmaTest/src/tools/ThreadPool.cpp -o CMakeFiles/tools.dir/ThreadPool.cpp.s

# Object files for target tools
tools_OBJECTS = \
"CMakeFiles/tools.dir/Parser.cpp.o" \
"CMakeFiles/tools.dir/ThreadPool.cpp.o"

# External object files for target tools
tools_EXTERNAL_OBJECTS =

src/tools/libtools.a: src/tools/CMakeFiles/tools.dir/Parser.cpp.o
src/tools/libtools.a: src/tools/CMakeFiles/tools.dir/ThreadPool.cpp.o
src/tools/libtools.a: src/tools/CMakeFiles/tools.dir/build.make
src/tools/libtools.a: src/tools/CMakeFiles/tools.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hjkim/PiGraph/Tools/rdmaTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libtools.a"
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/tools.dir/cmake_clean_target.cmake
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tools.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tools/CMakeFiles/tools.dir/build: src/tools/libtools.a

.PHONY : src/tools/CMakeFiles/tools.dir/build

src/tools/CMakeFiles/tools.dir/clean:
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/tools.dir/cmake_clean.cmake
.PHONY : src/tools/CMakeFiles/tools.dir/clean

src/tools/CMakeFiles/tools.dir/depend:
	cd /home/hjkim/PiGraph/Tools/rdmaTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hjkim/PiGraph/Tools/rdmaTest /home/hjkim/PiGraph/Tools/rdmaTest/src/tools /home/hjkim/PiGraph/Tools/rdmaTest/build /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools /home/hjkim/PiGraph/Tools/rdmaTest/build/src/tools/CMakeFiles/tools.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tools/CMakeFiles/tools.dir/depend
