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
CMAKE_SOURCE_DIR = /home/hjkim/PiGraph/module

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hjkim/PiGraph/module

# Include any dependencies generated for this target.
include build/CMakeFiles/utils.dir/depend.make

# Include the progress variables for this target.
include build/CMakeFiles/utils.dir/progress.make

# Include the compile flags for this target's objects.
include build/CMakeFiles/utils.dir/flags.make

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o: /home/hjkim/PiGraph/src/utils/ArgParsing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o -c /home/hjkim/PiGraph/src/utils/ArgParsing.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/ArgParsing.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/ArgParsing.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.s

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o: /home/hjkim/PiGraph/src/utils/ThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o -c /home/hjkim/PiGraph/src/utils/ThreadPool.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/ThreadPool.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/ThreadPool.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.s

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o: /home/hjkim/PiGraph/src/utils/tinystr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o -c /home/hjkim/PiGraph/src/utils/tinystr.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/tinystr.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/tinystr.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.s

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o: /home/hjkim/PiGraph/src/utils/tinyxml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o -c /home/hjkim/PiGraph/src/utils/tinyxml.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/tinyxml.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/tinyxml.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.s

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o: /home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o -c /home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.s

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o: build/CMakeFiles/utils.dir/flags.make
build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o: /home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o -c /home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.i"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp > CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.i

build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.s"
	cd /home/hjkim/PiGraph/module/build && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp -o CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.s

# Object files for target utils
utils_OBJECTS = \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o" \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o" \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o" \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o" \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o" \
"CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o"

# External object files for target utils
utils_EXTERNAL_OBJECTS =

build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ArgParsing.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/ThreadPool.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinystr.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxml.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlerror.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/home/hjkim/PiGraph/src/utils/tinyxmlparser.cpp.o
build/libutils.a: build/CMakeFiles/utils.dir/build.make
build/libutils.a: build/CMakeFiles/utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hjkim/PiGraph/module/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libutils.a"
	cd /home/hjkim/PiGraph/module/build && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean_target.cmake
	cd /home/hjkim/PiGraph/module/build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/CMakeFiles/utils.dir/build: build/libutils.a

.PHONY : build/CMakeFiles/utils.dir/build

build/CMakeFiles/utils.dir/clean:
	cd /home/hjkim/PiGraph/module/build && $(CMAKE_COMMAND) -P CMakeFiles/utils.dir/cmake_clean.cmake
.PHONY : build/CMakeFiles/utils.dir/clean

build/CMakeFiles/utils.dir/depend:
	cd /home/hjkim/PiGraph/module && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hjkim/PiGraph/module /home/hjkim/PiGraph/lib /home/hjkim/PiGraph/module /home/hjkim/PiGraph/module/build /home/hjkim/PiGraph/module/build/CMakeFiles/utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/CMakeFiles/utils.dir/depend

