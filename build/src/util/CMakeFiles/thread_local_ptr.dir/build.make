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
include src/util/CMakeFiles/thread_local_ptr.dir/depend.make

# Include the progress variables for this target.
include src/util/CMakeFiles/thread_local_ptr.dir/progress.make

# Include the compile flags for this target's objects.
include src/util/CMakeFiles/thread_local_ptr.dir/flags.make

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o: src/util/CMakeFiles/thread_local_ptr.dir/flags.make
src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o: ../src/util/thread_local_ptr.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/giorgi128/KLSM/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o"
	cd /home/giorgi128/KLSM/build/src/util && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o -c /home/giorgi128/KLSM/src/util/thread_local_ptr.cpp

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.i"
	cd /home/giorgi128/KLSM/build/src/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/giorgi128/KLSM/src/util/thread_local_ptr.cpp > CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.i

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.s"
	cd /home/giorgi128/KLSM/build/src/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/giorgi128/KLSM/src/util/thread_local_ptr.cpp -o CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.s

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.requires:
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.requires

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.provides: src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.requires
	$(MAKE) -f src/util/CMakeFiles/thread_local_ptr.dir/build.make src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.provides.build
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.provides

src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.provides.build: src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o

# Object files for target thread_local_ptr
thread_local_ptr_OBJECTS = \
"CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o"

# External object files for target thread_local_ptr
thread_local_ptr_EXTERNAL_OBJECTS =

src/util/libthread_local_ptr.a: src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o
src/util/libthread_local_ptr.a: src/util/CMakeFiles/thread_local_ptr.dir/build.make
src/util/libthread_local_ptr.a: src/util/CMakeFiles/thread_local_ptr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libthread_local_ptr.a"
	cd /home/giorgi128/KLSM/build/src/util && $(CMAKE_COMMAND) -P CMakeFiles/thread_local_ptr.dir/cmake_clean_target.cmake
	cd /home/giorgi128/KLSM/build/src/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thread_local_ptr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/util/CMakeFiles/thread_local_ptr.dir/build: src/util/libthread_local_ptr.a
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/build

src/util/CMakeFiles/thread_local_ptr.dir/requires: src/util/CMakeFiles/thread_local_ptr.dir/thread_local_ptr.cpp.o.requires
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/requires

src/util/CMakeFiles/thread_local_ptr.dir/clean:
	cd /home/giorgi128/KLSM/build/src/util && $(CMAKE_COMMAND) -P CMakeFiles/thread_local_ptr.dir/cmake_clean.cmake
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/clean

src/util/CMakeFiles/thread_local_ptr.dir/depend:
	cd /home/giorgi128/KLSM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/giorgi128/KLSM /home/giorgi128/KLSM/src/util /home/giorgi128/KLSM/build /home/giorgi128/KLSM/build/src/util /home/giorgi128/KLSM/build/src/util/CMakeFiles/thread_local_ptr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/util/CMakeFiles/thread_local_ptr.dir/depend

