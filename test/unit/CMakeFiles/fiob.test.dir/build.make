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
include test/unit/CMakeFiles/fiob.test.dir/depend.make

# Include the progress variables for this target.
include test/unit/CMakeFiles/fiob.test.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/CMakeFiles/fiob.test.dir/flags.make

test/unit/CMakeFiles/fiob.test.dir/unit.c.o: test/unit/CMakeFiles/fiob.test.dir/flags.make
test/unit/CMakeFiles/fiob.test.dir/unit.c.o: test/unit/unit.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/fiob.test.dir/unit.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/fiob.test.dir/unit.c.o   -c /home/rifto/bee/test/unit/unit.c

test/unit/CMakeFiles/fiob.test.dir/unit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fiob.test.dir/unit.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/test/unit/unit.c > CMakeFiles/fiob.test.dir/unit.c.i

test/unit/CMakeFiles/fiob.test.dir/unit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fiob.test.dir/unit.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/test/unit/unit.c -o CMakeFiles/fiob.test.dir/unit.c.s

test/unit/CMakeFiles/fiob.test.dir/unit.c.o.requires:
.PHONY : test/unit/CMakeFiles/fiob.test.dir/unit.c.o.requires

test/unit/CMakeFiles/fiob.test.dir/unit.c.o.provides: test/unit/CMakeFiles/fiob.test.dir/unit.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/fiob.test.dir/build.make test/unit/CMakeFiles/fiob.test.dir/unit.c.o.provides.build
.PHONY : test/unit/CMakeFiles/fiob.test.dir/unit.c.o.provides

test/unit/CMakeFiles/fiob.test.dir/unit.c.o.provides.build: test/unit/CMakeFiles/fiob.test.dir/unit.c.o

test/unit/CMakeFiles/fiob.test.dir/fiob.c.o: test/unit/CMakeFiles/fiob.test.dir/flags.make
test/unit/CMakeFiles/fiob.test.dir/fiob.c.o: test/unit/fiob.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/fiob.test.dir/fiob.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/fiob.test.dir/fiob.c.o   -c /home/rifto/bee/test/unit/fiob.c

test/unit/CMakeFiles/fiob.test.dir/fiob.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fiob.test.dir/fiob.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/test/unit/fiob.c > CMakeFiles/fiob.test.dir/fiob.c.i

test/unit/CMakeFiles/fiob.test.dir/fiob.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fiob.test.dir/fiob.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/test/unit/fiob.c -o CMakeFiles/fiob.test.dir/fiob.c.s

test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.requires:
.PHONY : test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.requires

test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.provides: test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/fiob.test.dir/build.make test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.provides.build
.PHONY : test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.provides

test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.provides.build: test/unit/CMakeFiles/fiob.test.dir/fiob.c.o

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o: test/unit/CMakeFiles/fiob.test.dir/flags.make
test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o: src/fiob.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o   -c /home/rifto/bee/src/fiob.c

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fiob.test.dir/__/__/src/fiob.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/fiob.c > CMakeFiles/fiob.test.dir/__/__/src/fiob.c.i

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fiob.test.dir/__/__/src/fiob.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/fiob.c -o CMakeFiles/fiob.test.dir/__/__/src/fiob.c.s

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.requires:
.PHONY : test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.requires

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.provides: test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/fiob.test.dir/build.make test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.provides.build
.PHONY : test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.provides

test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.provides.build: test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o

# Object files for target fiob.test
fiob_test_OBJECTS = \
"CMakeFiles/fiob.test.dir/unit.c.o" \
"CMakeFiles/fiob.test.dir/fiob.c.o" \
"CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o"

# External object files for target fiob.test
fiob_test_EXTERNAL_OBJECTS =

test/unit/fiob.test: test/unit/CMakeFiles/fiob.test.dir/unit.c.o
test/unit/fiob.test: test/unit/CMakeFiles/fiob.test.dir/fiob.c.o
test/unit/fiob.test: test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o
test/unit/fiob.test: test/unit/CMakeFiles/fiob.test.dir/build.make
test/unit/fiob.test: test/unit/CMakeFiles/fiob.test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable fiob.test"
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fiob.test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/CMakeFiles/fiob.test.dir/build: test/unit/fiob.test
.PHONY : test/unit/CMakeFiles/fiob.test.dir/build

test/unit/CMakeFiles/fiob.test.dir/requires: test/unit/CMakeFiles/fiob.test.dir/unit.c.o.requires
test/unit/CMakeFiles/fiob.test.dir/requires: test/unit/CMakeFiles/fiob.test.dir/fiob.c.o.requires
test/unit/CMakeFiles/fiob.test.dir/requires: test/unit/CMakeFiles/fiob.test.dir/__/__/src/fiob.c.o.requires
.PHONY : test/unit/CMakeFiles/fiob.test.dir/requires

test/unit/CMakeFiles/fiob.test.dir/clean:
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -P CMakeFiles/fiob.test.dir/cmake_clean.cmake
.PHONY : test/unit/CMakeFiles/fiob.test.dir/clean

test/unit/CMakeFiles/fiob.test.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee/test/unit/CMakeFiles/fiob.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/CMakeFiles/fiob.test.dir/depend

