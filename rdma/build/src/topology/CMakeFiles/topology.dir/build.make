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
CMAKE_SOURCE_DIR = /home/hjkim/PiGraph/rdma

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hjkim/PiGraph/rdma/build

# Include any dependencies generated for this target.
include src/topology/CMakeFiles/topology.dir/depend.make

# Include the progress variables for this target.
include src/topology/CMakeFiles/topology.dir/progress.make

# Include the compile flags for this target's objects.
include src/topology/CMakeFiles/topology.dir/flags.make

src/topology/CMakeFiles/topology.dir/Topology.cpp.o: src/topology/CMakeFiles/topology.dir/flags.make
src/topology/CMakeFiles/topology.dir/Topology.cpp.o: ../src/topology/Topology.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/rdma/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/topology/CMakeFiles/topology.dir/Topology.cpp.o"
	cd /home/hjkim/PiGraph/rdma/build/src/topology && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/topology.dir/Topology.cpp.o -c /home/hjkim/PiGraph/rdma/src/topology/Topology.cpp

src/topology/CMakeFiles/topology.dir/Topology.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/topology.dir/Topology.cpp.i"
	cd /home/hjkim/PiGraph/rdma/build/src/topology && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/rdma/src/topology/Topology.cpp > CMakeFiles/topology.dir/Topology.cpp.i

src/topology/CMakeFiles/topology.dir/Topology.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/topology.dir/Topology.cpp.s"
	cd /home/hjkim/PiGraph/rdma/build/src/topology && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/rdma/src/topology/Topology.cpp -o CMakeFiles/topology.dir/Topology.cpp.s

# Object files for target topology
topology_OBJECTS = \
"CMakeFiles/topology.dir/Topology.cpp.o"

# External object files for target topology
topology_EXTERNAL_OBJECTS =

src/topology/libtopology.a: src/topology/CMakeFiles/topology.dir/Topology.cpp.o
src/topology/libtopology.a: src/topology/CMakeFiles/topology.dir/build.make
src/topology/libtopology.a: src/topology/CMakeFiles/topology.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hjkim/PiGraph/rdma/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libtopology.a"
	cd /home/hjkim/PiGraph/rdma/build/src/topology && $(CMAKE_COMMAND) -P CMakeFiles/topology.dir/cmake_clean_target.cmake
	cd /home/hjkim/PiGraph/rdma/build/src/topology && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/topology.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/topology/CMakeFiles/topology.dir/build: src/topology/libtopology.a

.PHONY : src/topology/CMakeFiles/topology.dir/build

src/topology/CMakeFiles/topology.dir/clean:
	cd /home/hjkim/PiGraph/rdma/build/src/topology && $(CMAKE_COMMAND) -P CMakeFiles/topology.dir/cmake_clean.cmake
.PHONY : src/topology/CMakeFiles/topology.dir/clean

src/topology/CMakeFiles/topology.dir/depend:
	cd /home/hjkim/PiGraph/rdma/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hjkim/PiGraph/rdma /home/hjkim/PiGraph/rdma/src/topology /home/hjkim/PiGraph/rdma/build /home/hjkim/PiGraph/rdma/build/src/topology /home/hjkim/PiGraph/rdma/build/src/topology/CMakeFiles/topology.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/topology/CMakeFiles/topology.dir/depend
