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
include CMakeFiles/coro.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/coro.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/coro.dir/flags.make

CMakeFiles/coro.dir/third_party/coro/coro.c.o: CMakeFiles/coro.dir/flags.make
CMakeFiles/coro.dir/third_party/coro/coro.c.o: third_party/coro/coro.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/coro.dir/third_party/coro/coro.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/coro.dir/third_party/coro/coro.c.o   -c /home/rifto/bee/third_party/coro/coro.c

CMakeFiles/coro.dir/third_party/coro/coro.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/coro.dir/third_party/coro/coro.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/coro/coro.c > CMakeFiles/coro.dir/third_party/coro/coro.c.i

CMakeFiles/coro.dir/third_party/coro/coro.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/coro.dir/third_party/coro/coro.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/coro/coro.c -o CMakeFiles/coro.dir/third_party/coro/coro.c.s

CMakeFiles/coro.dir/third_party/coro/coro.c.o.requires:
.PHONY : CMakeFiles/coro.dir/third_party/coro/coro.c.o.requires

CMakeFiles/coro.dir/third_party/coro/coro.c.o.provides: CMakeFiles/coro.dir/third_party/coro/coro.c.o.requires
	$(MAKE) -f CMakeFiles/coro.dir/build.make CMakeFiles/coro.dir/third_party/coro/coro.c.o.provides.build
.PHONY : CMakeFiles/coro.dir/third_party/coro/coro.c.o.provides

CMakeFiles/coro.dir/third_party/coro/coro.c.o.provides.build: CMakeFiles/coro.dir/third_party/coro/coro.c.o

# Object files for target coro
coro_OBJECTS = \
"CMakeFiles/coro.dir/third_party/coro/coro.c.o"

# External object files for target coro
coro_EXTERNAL_OBJECTS =

libcoro.a: CMakeFiles/coro.dir/third_party/coro/coro.c.o
libcoro.a: CMakeFiles/coro.dir/build.make
libcoro.a: CMakeFiles/coro.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libcoro.a"
	$(CMAKE_COMMAND) -P CMakeFiles/coro.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coro.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/coro.dir/build: libcoro.a
.PHONY : CMakeFiles/coro.dir/build

CMakeFiles/coro.dir/requires: CMakeFiles/coro.dir/third_party/coro/coro.c.o.requires
.PHONY : CMakeFiles/coro.dir/requires

CMakeFiles/coro.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coro.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coro.dir/clean

CMakeFiles/coro.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee/CMakeFiles/coro.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/coro.dir/depend

