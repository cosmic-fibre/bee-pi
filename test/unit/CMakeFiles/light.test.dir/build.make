# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/rifto/bee

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rifto/bee

# Include any dependencies generated for this target.
include test/unit/CMakeFiles/light.test.dir/depend.make

# Include the progress variables for this target.
include test/unit/CMakeFiles/light.test.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/CMakeFiles/light.test.dir/flags.make

test/unit/CMakeFiles/light.test.dir/light.cc.o: test/unit/CMakeFiles/light.test.dir/flags.make
test/unit/CMakeFiles/light.test.dir/light.cc.o: test/unit/light.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/unit/CMakeFiles/light.test.dir/light.cc.o"
	cd /home/rifto/bee/test/unit && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/light.test.dir/light.cc.o -c /home/rifto/bee/test/unit/light.cc

test/unit/CMakeFiles/light.test.dir/light.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/light.test.dir/light.cc.i"
	cd /home/rifto/bee/test/unit && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rifto/bee/test/unit/light.cc > CMakeFiles/light.test.dir/light.cc.i

test/unit/CMakeFiles/light.test.dir/light.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/light.test.dir/light.cc.s"
	cd /home/rifto/bee/test/unit && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rifto/bee/test/unit/light.cc -o CMakeFiles/light.test.dir/light.cc.s

test/unit/CMakeFiles/light.test.dir/light.cc.o.requires:
.PHONY : test/unit/CMakeFiles/light.test.dir/light.cc.o.requires

test/unit/CMakeFiles/light.test.dir/light.cc.o.provides: test/unit/CMakeFiles/light.test.dir/light.cc.o.requires
	$(MAKE) -f test/unit/CMakeFiles/light.test.dir/build.make test/unit/CMakeFiles/light.test.dir/light.cc.o.provides.build
.PHONY : test/unit/CMakeFiles/light.test.dir/light.cc.o.provides

test/unit/CMakeFiles/light.test.dir/light.cc.o.provides.build: test/unit/CMakeFiles/light.test.dir/light.cc.o

# Object files for target light.test
light_test_OBJECTS = \
"CMakeFiles/light.test.dir/light.cc.o"

# External object files for target light.test
light_test_EXTERNAL_OBJECTS =

test/unit/light.test: test/unit/CMakeFiles/light.test.dir/light.cc.o
test/unit/light.test: test/unit/CMakeFiles/light.test.dir/build.make
test/unit/light.test: src/lib/small/libsmall.a
test/unit/light.test: test/unit/CMakeFiles/light.test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable light.test"
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/light.test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/CMakeFiles/light.test.dir/build: test/unit/light.test
.PHONY : test/unit/CMakeFiles/light.test.dir/build

test/unit/CMakeFiles/light.test.dir/requires: test/unit/CMakeFiles/light.test.dir/light.cc.o.requires
.PHONY : test/unit/CMakeFiles/light.test.dir/requires

test/unit/CMakeFiles/light.test.dir/clean:
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -P CMakeFiles/light.test.dir/cmake_clean.cmake
.PHONY : test/unit/CMakeFiles/light.test.dir/clean

test/unit/CMakeFiles/light.test.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee/test/unit/CMakeFiles/light.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/CMakeFiles/light.test.dir/depend

