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
include test/CMakeFiles/pq-par-test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/pq-par-test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/pq-par-test.dir/flags.make

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o: test/CMakeFiles/pq-par-test.dir/flags.make
test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o: ../test/pq_par.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/giorgi128/KLSM/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o"
	cd /home/giorgi128/KLSM/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pq-par-test.dir/pq_par.cpp.o -c /home/giorgi128/KLSM/test/pq_par.cpp

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pq-par-test.dir/pq_par.cpp.i"
	cd /home/giorgi128/KLSM/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/giorgi128/KLSM/test/pq_par.cpp > CMakeFiles/pq-par-test.dir/pq_par.cpp.i

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pq-par-test.dir/pq_par.cpp.s"
	cd /home/giorgi128/KLSM/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/giorgi128/KLSM/test/pq_par.cpp -o CMakeFiles/pq-par-test.dir/pq_par.cpp.s

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.requires:
.PHONY : test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.requires

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.provides: test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/pq-par-test.dir/build.make test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.provides.build
.PHONY : test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.provides

test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.provides.build: test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o

# Object files for target pq-par-test
pq__par__test_OBJECTS = \
"CMakeFiles/pq-par-test.dir/pq_par.cpp.o"

# External object files for target pq-par-test
pq__par__test_EXTERNAL_OBJECTS =

test/pq-par-test: test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o
test/pq-par-test: test/CMakeFiles/pq-par-test.dir/build.make
test/pq-par-test: gtest/libgtest.a
test/pq-par-test: src/util/libthread_local_ptr.a
test/pq-par-test: test/CMakeFiles/pq-par-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pq-par-test"
	cd /home/giorgi128/KLSM/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pq-par-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/pq-par-test.dir/build: test/pq-par-test
.PHONY : test/CMakeFiles/pq-par-test.dir/build

test/CMakeFiles/pq-par-test.dir/requires: test/CMakeFiles/pq-par-test.dir/pq_par.cpp.o.requires
.PHONY : test/CMakeFiles/pq-par-test.dir/requires

test/CMakeFiles/pq-par-test.dir/clean:
	cd /home/giorgi128/KLSM/build/test && $(CMAKE_COMMAND) -P CMakeFiles/pq-par-test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/pq-par-test.dir/clean

test/CMakeFiles/pq-par-test.dir/depend:
	cd /home/giorgi128/KLSM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/giorgi128/KLSM /home/giorgi128/KLSM/test /home/giorgi128/KLSM/build /home/giorgi128/KLSM/build/test /home/giorgi128/KLSM/build/test/CMakeFiles/pq-par-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/pq-par-test.dir/depend
