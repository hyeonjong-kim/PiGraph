# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hjkim/PiGraph/rdma/PageRank

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hjkim/PiGraph/exec/RDMA_PageRank

# Include any dependencies generated for this target.
include CMakeFiles/PiGraph_RDMA_PageRank.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PiGraph_RDMA_PageRank.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PiGraph_RDMA_PageRank.dir/flags.make

CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o: CMakeFiles/PiGraph_RDMA_PageRank.dir/flags.make
CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o: /home/hjkim/PiGraph/rdma/PageRank/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/exec/RDMA_PageRank/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o -c /home/hjkim/PiGraph/rdma/PageRank/main.cpp

CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.i"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/rdma/PageRank/main.cpp > CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.i

CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.s"
	/opt/rh/devtoolset-8/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/rdma/PageRank/main.cpp -o CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.s

# Object files for target PiGraph_RDMA_PageRank
PiGraph_RDMA_PageRank_OBJECTS = \
"CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o"

# External object files for target PiGraph_RDMA_PageRank
PiGraph_RDMA_PageRank_EXTERNAL_OBJECTS =

PiGraph_RDMA_PageRank: CMakeFiles/PiGraph_RDMA_PageRank.dir/main.cpp.o
PiGraph_RDMA_PageRank: CMakeFiles/PiGraph_RDMA_PageRank.dir/build.make
PiGraph_RDMA_PageRank: core/libcore.a
PiGraph_RDMA_PageRank: query/libquery.a
PiGraph_RDMA_PageRank: network/libnetwork.a
PiGraph_RDMA_PageRank: tools/libtools.a
PiGraph_RDMA_PageRank: core/libcore.a
PiGraph_RDMA_PageRank: network/libnetwork.a
PiGraph_RDMA_PageRank: CMakeFiles/PiGraph_RDMA_PageRank.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hjkim/PiGraph/exec/RDMA_PageRank/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PiGraph_RDMA_PageRank"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PiGraph_RDMA_PageRank.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PiGraph_RDMA_PageRank.dir/build: PiGraph_RDMA_PageRank

.PHONY : CMakeFiles/PiGraph_RDMA_PageRank.dir/build

CMakeFiles/PiGraph_RDMA_PageRank.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PiGraph_RDMA_PageRank.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PiGraph_RDMA_PageRank.dir/clean

CMakeFiles/PiGraph_RDMA_PageRank.dir/depend:
	cd /home/hjkim/PiGraph/exec/RDMA_PageRank && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hjkim/PiGraph/rdma/PageRank /home/hjkim/PiGraph/rdma/PageRank /home/hjkim/PiGraph/exec/RDMA_PageRank /home/hjkim/PiGraph/exec/RDMA_PageRank /home/hjkim/PiGraph/exec/RDMA_PageRank/CMakeFiles/PiGraph_RDMA_PageRank.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PiGraph_RDMA_PageRank.dir/depend

