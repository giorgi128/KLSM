# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/giorgi128/KLSM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/giorgi128/KLSM/build

# Include any dependencies generated for this target.
include test/util/CMakeFiles/mm-test.dir/depend.make

# Include the progress variables for this target.
include test/util/CMakeFiles/mm-test.dir/progress.make

# Include the compile flags for this target's objects.
include test/util/CMakeFiles/mm-test.dir/flags.make

test/util/CMakeFiles/mm-test.dir/mm.cpp.o: test/util/CMakeFiles/mm-test.dir/flags.make
test/util/CMakeFiles/mm-test.dir/mm.cpp.o: ../test/util/mm.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/giorgi128/KLSM/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/util/CMakeFiles/mm-test.dir/mm.cpp.o"
	cd /home/giorgi128/KLSM/build/test/util && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mm-test.dir/mm.cpp.o -c /home/giorgi128/KLSM/test/util/mm.cpp

test/util/CMakeFiles/mm-test.dir/mm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mm-test.dir/mm.cpp.i"
	cd /home/giorgi128/KLSM/build/test/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/giorgi128/KLSM/test/util/mm.cpp > CMakeFiles/mm-test.dir/mm.cpp.i

test/util/CMakeFiles/mm-test.dir/mm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mm-test.dir/mm.cpp.s"
	cd /home/giorgi128/KLSM/build/test/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/giorgi128/KLSM/test/util/mm.cpp -o CMakeFiles/mm-test.dir/mm.cpp.s

test/util/CMakeFiles/mm-test.dir/mm.cpp.o.requires:
.PHONY : test/util/CMakeFiles/mm-test.dir/mm.cpp.o.requires

test/util/CMakeFiles/mm-test.dir/mm.cpp.o.provides: test/util/CMakeFiles/mm-test.dir/mm.cpp.o.requires
	$(MAKE) -f test/util/CMakeFiles/mm-test.dir/build.make test/util/CMakeFiles/mm-test.dir/mm.cpp.o.provides.build
.PHONY : test/util/CMakeFiles/mm-test.dir/mm.cpp.o.provides

test/util/CMakeFiles/mm-test.dir/mm.cpp.o.provides.build: test/util/CMakeFiles/mm-test.dir/mm.cpp.o

# Object files for target mm-test
mm__test_OBJECTS = \
"CMakeFiles/mm-test.dir/mm.cpp.o"

# External object files for target mm-test
mm__test_EXTERNAL_OBJECTS =

test/util/mm-test: test/util/CMakeFiles/mm-test.dir/mm.cpp.o
test/util/mm-test: test/util/CMakeFiles/mm-test.dir/build.make
test/util/mm-test: gtest/libgtest.a
test/util/mm-test: test/util/CMakeFiles/mm-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mm-test"
	cd /home/giorgi128/KLSM/build/test/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mm-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/util/CMakeFiles/mm-test.dir/build: test/util/mm-test
.PHONY : test/util/CMakeFiles/mm-test.dir/build

test/util/CMakeFiles/mm-test.dir/requires: test/util/CMakeFiles/mm-test.dir/mm.cpp.o.requires
.PHONY : test/util/CMakeFiles/mm-test.dir/requires

test/util/CMakeFiles/mm-test.dir/clean:
	cd /home/giorgi128/KLSM/build/test/util && $(CMAKE_COMMAND) -P CMakeFiles/mm-test.dir/cmake_clean.cmake
.PHONY : test/util/CMakeFiles/mm-test.dir/clean

test/util/CMakeFiles/mm-test.dir/depend:
	cd /home/giorgi128/KLSM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/giorgi128/KLSM /home/giorgi128/KLSM/test/util /home/giorgi128/KLSM/build /home/giorgi128/KLSM/build/test/util /home/giorgi128/KLSM/build/test/util/CMakeFiles/mm-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/util/CMakeFiles/mm-test.dir/depend
