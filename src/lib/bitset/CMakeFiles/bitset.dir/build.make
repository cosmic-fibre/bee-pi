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
include src/lib/bitset/CMakeFiles/bitset.dir/depend.make

# Include the progress variables for this target.
include src/lib/bitset/CMakeFiles/bitset.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/bitset/CMakeFiles/bitset.dir/flags.make

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o: src/lib/bitset/CMakeFiles/bitset.dir/flags.make
src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o: src/lib/bitset/bitset.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bitset.dir/bitset.c.o   -c /home/rifto/bee/src/lib/bitset/bitset.c

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bitset.dir/bitset.c.i"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/lib/bitset/bitset.c > CMakeFiles/bitset.dir/bitset.c.i

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bitset.dir/bitset.c.s"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/lib/bitset/bitset.c -o CMakeFiles/bitset.dir/bitset.c.s

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.requires:
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.requires

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.provides: src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.requires
	$(MAKE) -f src/lib/bitset/CMakeFiles/bitset.dir/build.make src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.provides.build
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.provides

src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.provides.build: src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o

src/lib/bitset/CMakeFiles/bitset.dir/page.c.o: src/lib/bitset/CMakeFiles/bitset.dir/flags.make
src/lib/bitset/CMakeFiles/bitset.dir/page.c.o: src/lib/bitset/page.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/lib/bitset/CMakeFiles/bitset.dir/page.c.o"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bitset.dir/page.c.o   -c /home/rifto/bee/src/lib/bitset/page.c

src/lib/bitset/CMakeFiles/bitset.dir/page.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bitset.dir/page.c.i"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/lib/bitset/page.c > CMakeFiles/bitset.dir/page.c.i

src/lib/bitset/CMakeFiles/bitset.dir/page.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bitset.dir/page.c.s"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/lib/bitset/page.c -o CMakeFiles/bitset.dir/page.c.s

src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.requires:
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.requires

src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.provides: src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.requires
	$(MAKE) -f src/lib/bitset/CMakeFiles/bitset.dir/build.make src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.provides.build
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.provides

src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.provides.build: src/lib/bitset/CMakeFiles/bitset.dir/page.c.o

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o: src/lib/bitset/CMakeFiles/bitset.dir/flags.make
src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o: src/lib/bitset/expr.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bitset.dir/expr.c.o   -c /home/rifto/bee/src/lib/bitset/expr.c

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bitset.dir/expr.c.i"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/lib/bitset/expr.c > CMakeFiles/bitset.dir/expr.c.i

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bitset.dir/expr.c.s"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/lib/bitset/expr.c -o CMakeFiles/bitset.dir/expr.c.s

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.requires:
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.requires

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.provides: src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.requires
	$(MAKE) -f src/lib/bitset/CMakeFiles/bitset.dir/build.make src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.provides.build
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.provides

src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.provides.build: src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o: src/lib/bitset/CMakeFiles/bitset.dir/flags.make
src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o: src/lib/bitset/iterator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bitset.dir/iterator.c.o   -c /home/rifto/bee/src/lib/bitset/iterator.c

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bitset.dir/iterator.c.i"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/lib/bitset/iterator.c > CMakeFiles/bitset.dir/iterator.c.i

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bitset.dir/iterator.c.s"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/lib/bitset/iterator.c -o CMakeFiles/bitset.dir/iterator.c.s

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.requires:
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.requires

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.provides: src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.requires
	$(MAKE) -f src/lib/bitset/CMakeFiles/bitset.dir/build.make src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.provides.build
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.provides

src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.provides.build: src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o

src/lib/bitset/CMakeFiles/bitset.dir/index.c.o: src/lib/bitset/CMakeFiles/bitset.dir/flags.make
src/lib/bitset/CMakeFiles/bitset.dir/index.c.o: src/lib/bitset/index.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/lib/bitset/CMakeFiles/bitset.dir/index.c.o"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bitset.dir/index.c.o   -c /home/rifto/bee/src/lib/bitset/index.c

src/lib/bitset/CMakeFiles/bitset.dir/index.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bitset.dir/index.c.i"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/src/lib/bitset/index.c > CMakeFiles/bitset.dir/index.c.i

src/lib/bitset/CMakeFiles/bitset.dir/index.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bitset.dir/index.c.s"
	cd /home/rifto/bee/src/lib/bitset && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/src/lib/bitset/index.c -o CMakeFiles/bitset.dir/index.c.s

src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.requires:
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.requires

src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.provides: src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.requires
	$(MAKE) -f src/lib/bitset/CMakeFiles/bitset.dir/build.make src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.provides.build
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.provides

src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.provides.build: src/lib/bitset/CMakeFiles/bitset.dir/index.c.o

# Object files for target bitset
bitset_OBJECTS = \
"CMakeFiles/bitset.dir/bitset.c.o" \
"CMakeFiles/bitset.dir/page.c.o" \
"CMakeFiles/bitset.dir/expr.c.o" \
"CMakeFiles/bitset.dir/iterator.c.o" \
"CMakeFiles/bitset.dir/index.c.o"

# External object files for target bitset
bitset_EXTERNAL_OBJECTS =

src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/page.c.o
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/index.c.o
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/build.make
src/lib/bitset/libbitset.a: src/lib/bitset/CMakeFiles/bitset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libbitset.a"
	cd /home/rifto/bee/src/lib/bitset && $(CMAKE_COMMAND) -P CMakeFiles/bitset.dir/cmake_clean_target.cmake
	cd /home/rifto/bee/src/lib/bitset && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bitset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/bitset/CMakeFiles/bitset.dir/build: src/lib/bitset/libbitset.a
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/build

src/lib/bitset/CMakeFiles/bitset.dir/requires: src/lib/bitset/CMakeFiles/bitset.dir/bitset.c.o.requires
src/lib/bitset/CMakeFiles/bitset.dir/requires: src/lib/bitset/CMakeFiles/bitset.dir/page.c.o.requires
src/lib/bitset/CMakeFiles/bitset.dir/requires: src/lib/bitset/CMakeFiles/bitset.dir/expr.c.o.requires
src/lib/bitset/CMakeFiles/bitset.dir/requires: src/lib/bitset/CMakeFiles/bitset.dir/iterator.c.o.requires
src/lib/bitset/CMakeFiles/bitset.dir/requires: src/lib/bitset/CMakeFiles/bitset.dir/index.c.o.requires
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/requires

src/lib/bitset/CMakeFiles/bitset.dir/clean:
	cd /home/rifto/bee/src/lib/bitset && $(CMAKE_COMMAND) -P CMakeFiles/bitset.dir/cmake_clean.cmake
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/clean

src/lib/bitset/CMakeFiles/bitset.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/src/lib/bitset /home/rifto/bee /home/rifto/bee/src/lib/bitset /home/rifto/bee/src/lib/bitset/CMakeFiles/bitset.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/bitset/CMakeFiles/bitset.dir/depend

