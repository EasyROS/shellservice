# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/dean/App/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/dean/App/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dean/dean.test/workspace/src/default/shellservice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sys_bind_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sys_bind_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sys_bind_test.dir/flags.make

CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o: CMakeFiles/sys_bind_test.dir/flags.make
CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o: ../sys_tree/sys_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o -c /home/dean/dean.test/workspace/src/default/shellservice/sys_tree/sys_tree.cpp

CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dean/dean.test/workspace/src/default/shellservice/sys_tree/sys_tree.cpp > CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.i

CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dean/dean.test/workspace/src/default/shellservice/sys_tree/sys_tree.cpp -o CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.s

CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o: CMakeFiles/sys_bind_test.dir/flags.make
CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o: ../sys_bind/sys_bind.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o -c /home/dean/dean.test/workspace/src/default/shellservice/sys_bind/sys_bind.cpp

CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dean/dean.test/workspace/src/default/shellservice/sys_bind/sys_bind.cpp > CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.i

CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dean/dean.test/workspace/src/default/shellservice/sys_bind/sys_bind.cpp -o CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.s

# Object files for target sys_bind_test
sys_bind_test_OBJECTS = \
"CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o" \
"CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o"

# External object files for target sys_bind_test
sys_bind_test_EXTERNAL_OBJECTS =

sys_bind_test: CMakeFiles/sys_bind_test.dir/sys_tree/sys_tree.cpp.o
sys_bind_test: CMakeFiles/sys_bind_test.dir/sys_bind/sys_bind.cpp.o
sys_bind_test: CMakeFiles/sys_bind_test.dir/build.make
sys_bind_test: CMakeFiles/sys_bind_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sys_bind_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sys_bind_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sys_bind_test.dir/build: sys_bind_test

.PHONY : CMakeFiles/sys_bind_test.dir/build

CMakeFiles/sys_bind_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sys_bind_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sys_bind_test.dir/clean

CMakeFiles/sys_bind_test.dir/depend:
	cd /home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dean/dean.test/workspace/src/default/shellservice /home/dean/dean.test/workspace/src/default/shellservice /home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug /home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug /home/dean/dean.test/workspace/src/default/shellservice/cmake-build-debug/CMakeFiles/sys_bind_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sys_bind_test.dir/depend

