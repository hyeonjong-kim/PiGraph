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
CMAKE_SOURCE_DIR = /home/hjkim/PiGraph/bin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hjkim/PiGraph/bin

# Include any dependencies generated for this target.
include module/lib/CMakeFiles/communication.dir/depend.make

# Include the progress variables for this target.
include module/lib/CMakeFiles/communication.dir/progress.make

# Include the compile flags for this target's objects.
include module/lib/CMakeFiles/communication.dir/flags.make

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o: module/lib/CMakeFiles/communication.dir/flags.make
module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o: /home/hjkim/PiGraph/src/communication/IPC.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o -c /home/hjkim/PiGraph/src/communication/IPC.cpp

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.i"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/communication/IPC.cpp > CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.i

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.s"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/communication/IPC.cpp -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.s

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o: module/lib/CMakeFiles/communication.dir/flags.make
module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o: /home/hjkim/PiGraph/src/communication/IPoIB.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o -c /home/hjkim/PiGraph/src/communication/IPoIB.cpp

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.i"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/communication/IPoIB.cpp > CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.i

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.s"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/communication/IPoIB.cpp -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.s

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o: module/lib/CMakeFiles/communication.dir/flags.make
module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o: /home/hjkim/PiGraph/src/communication/RDMA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o -c /home/hjkim/PiGraph/src/communication/RDMA.cpp

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.i"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/communication/RDMA.cpp > CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.i

module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.s"
	cd /home/hjkim/PiGraph/bin/module/lib && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/communication/RDMA.cpp -o CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.s

# Object files for target communication
communication_OBJECTS = \
"CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o" \
"CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o" \
"CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o"

# External object files for target communication
communication_EXTERNAL_OBJECTS =

module/lib/libcommunication.a: module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPC.cpp.o
module/lib/libcommunication.a: module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/IPoIB.cpp.o
module/lib/libcommunication.a: module/lib/CMakeFiles/communication.dir/home/hjkim/PiGraph/src/communication/RDMA.cpp.o
module/lib/libcommunication.a: module/lib/CMakeFiles/communication.dir/build.make
module/lib/libcommunication.a: module/lib/CMakeFiles/communication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hjkim/PiGraph/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libcommunication.a"
	cd /home/hjkim/PiGraph/bin/module/lib && $(CMAKE_COMMAND) -P CMakeFiles/communication.dir/cmake_clean_target.cmake
	cd /home/hjkim/PiGraph/bin/module/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/communication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
module/lib/CMakeFiles/communication.dir/build: module/lib/libcommunication.a

.PHONY : module/lib/CMakeFiles/communication.dir/build

module/lib/CMakeFiles/communication.dir/clean:
	cd /home/hjkim/PiGraph/bin/module/lib && $(CMAKE_COMMAND) -P CMakeFiles/communication.dir/cmake_clean.cmake
.PHONY : module/lib/CMakeFiles/communication.dir/clean

module/lib/CMakeFiles/communication.dir/depend:
	cd /home/hjkim/PiGraph/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hjkim/PiGraph/bin /home/hjkim/PiGraph/lib /home/hjkim/PiGraph/bin /home/hjkim/PiGraph/bin/module/lib /home/hjkim/PiGraph/bin/module/lib/CMakeFiles/communication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : module/lib/CMakeFiles/communication.dir/depend
