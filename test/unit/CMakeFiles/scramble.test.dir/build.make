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
include test/unit/CMakeFiles/scramble.test.dir/depend.make

# Include the progress variables for this target.
include test/unit/CMakeFiles/scramble.test.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/CMakeFiles/scramble.test.dir/flags.make

test/unit/CMakeFiles/scramble.test.dir/scramble.c.o: test/unit/CMakeFiles/scramble.test.dir/flags.make
test/unit/CMakeFiles/scramble.test.dir/scramble.c.o: test/unit/scramble.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/scramble.test.dir/scramble.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scramble.test.dir/scramble.c.o   -c /home/rifto/bee/test/unit/scramble.c

test/unit/CMakeFiles/scramble.test.dir/scramble.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scramble.test.dir/scramble.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/test/unit/scramble.c > CMakeFiles/scramble.test.dir/scramble.c.i

test/unit/CMakeFiles/scramble.test.dir/scramble.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scramble.test.dir/scramble.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/test/unit/scramble.c -o CMakeFiles/scramble.test.dir/scramble.c.s

test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.requires:
.PHONY : test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.requires

test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.provides: test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/scramble.test.dir/build.make test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.provides.build
.PHONY : test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.provides

test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.provides.build: test/unit/CMakeFiles/scramble.test.dir/scramble.c.o

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o: test/unit/CMakeFiles/scramble.test.dir/flags.make
test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o: src/scramble.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o   -c /home/rifto/bee/src/scramble.c

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scramble.test.dir/__/__/src/scramble.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/scramble.c > CMakeFiles/scramble.test.dir/__/__/src/scramble.c.i

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scramble.test.dir/__/__/src/scramble.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/scramble.c -o CMakeFiles/scramble.test.dir/__/__/src/scramble.c.s

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.requires:
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.requires

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.provides: test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/scramble.test.dir/build.make test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.provides.build
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.provides

test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.provides.build: test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o: test/unit/CMakeFiles/scramble.test.dir/flags.make
test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o: third_party/sha1.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o   -c /home/rifto/bee/third_party/sha1.c

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/sha1.c > CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.i

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/sha1.c -o CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.s

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.requires:
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.requires

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.provides: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/scramble.test.dir/build.make test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.provides.build
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.provides

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.provides.build: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o: test/unit/CMakeFiles/scramble.test.dir/flags.make
test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o: third_party/base64.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o   -c /home/rifto/bee/third_party/base64.c

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/base64.c > CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.i

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/base64.c -o CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.s

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.requires:
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.requires

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.provides: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/scramble.test.dir/build.make test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.provides.build
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.provides

test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.provides.build: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o: test/unit/CMakeFiles/scramble.test.dir/flags.make
test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o: src/random.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scramble.test.dir/__/__/src/random.c.o   -c /home/rifto/bee/src/random.c

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scramble.test.dir/__/__/src/random.c.i"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/random.c > CMakeFiles/scramble.test.dir/__/__/src/random.c.i

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scramble.test.dir/__/__/src/random.c.s"
	cd /home/rifto/bee/test/unit && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/random.c -o CMakeFiles/scramble.test.dir/__/__/src/random.c.s

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.requires:
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.requires

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.provides: test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.requires
	$(MAKE) -f test/unit/CMakeFiles/scramble.test.dir/build.make test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.provides.build
.PHONY : test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.provides

test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.provides.build: test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o

# Object files for target scramble.test
scramble_test_OBJECTS = \
"CMakeFiles/scramble.test.dir/scramble.c.o" \
"CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o" \
"CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o" \
"CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o" \
"CMakeFiles/scramble.test.dir/__/__/src/random.c.o"

# External object files for target scramble.test
scramble_test_EXTERNAL_OBJECTS =

test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/scramble.c.o
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/build.make
test/unit/scramble.test: test/unit/CMakeFiles/scramble.test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable scramble.test"
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scramble.test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/CMakeFiles/scramble.test.dir/build: test/unit/scramble.test
.PHONY : test/unit/CMakeFiles/scramble.test.dir/build

test/unit/CMakeFiles/scramble.test.dir/requires: test/unit/CMakeFiles/scramble.test.dir/scramble.c.o.requires
test/unit/CMakeFiles/scramble.test.dir/requires: test/unit/CMakeFiles/scramble.test.dir/__/__/src/scramble.c.o.requires
test/unit/CMakeFiles/scramble.test.dir/requires: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/sha1.c.o.requires
test/unit/CMakeFiles/scramble.test.dir/requires: test/unit/CMakeFiles/scramble.test.dir/__/__/third_party/base64.c.o.requires
test/unit/CMakeFiles/scramble.test.dir/requires: test/unit/CMakeFiles/scramble.test.dir/__/__/src/random.c.o.requires
.PHONY : test/unit/CMakeFiles/scramble.test.dir/requires

test/unit/CMakeFiles/scramble.test.dir/clean:
	cd /home/rifto/bee/test/unit && $(CMAKE_COMMAND) -P CMakeFiles/scramble.test.dir/cmake_clean.cmake
.PHONY : test/unit/CMakeFiles/scramble.test.dir/clean

test/unit/CMakeFiles/scramble.test.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee /home/rifto/bee/test/unit /home/rifto/bee/test/unit/CMakeFiles/scramble.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/CMakeFiles/scramble.test.dir/depend
