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
include CMakeFiles/ev.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ev.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ev.dir/flags.make

CMakeFiles/ev.dir/third_party/bee_ev.c.o: CMakeFiles/ev.dir/flags.make
CMakeFiles/ev.dir/third_party/bee_ev.c.o: third_party/bee_ev.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ev.dir/third_party/bee_ev.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ev.dir/third_party/bee_ev.c.o   -c /home/rifto/bee/third_party/bee_ev.c

CMakeFiles/ev.dir/third_party/bee_ev.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ev.dir/third_party/bee_ev.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/bee_ev.c > CMakeFiles/ev.dir/third_party/bee_ev.c.i

CMakeFiles/ev.dir/third_party/bee_ev.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ev.dir/third_party/bee_ev.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/bee_ev.c -o CMakeFiles/ev.dir/third_party/bee_ev.c.s

CMakeFiles/ev.dir/third_party/bee_ev.c.o.requires:
.PHONY : CMakeFiles/ev.dir/third_party/bee_ev.c.o.requires

CMakeFiles/ev.dir/third_party/bee_ev.c.o.provides: CMakeFiles/ev.dir/third_party/bee_ev.c.o.requires
	$(MAKE) -f CMakeFiles/ev.dir/build.make CMakeFiles/ev.dir/third_party/bee_ev.c.o.provides.build
.PHONY : CMakeFiles/ev.dir/third_party/bee_ev.c.o.provides

CMakeFiles/ev.dir/third_party/bee_ev.c.o.provides.build: CMakeFiles/ev.dir/third_party/bee_ev.c.o

# Object files for target ev
ev_OBJECTS = \
"CMakeFiles/ev.dir/third_party/bee_ev.c.o"

# External object files for target ev
ev_EXTERNAL_OBJECTS =

libev.a: CMakeFiles/ev.dir/third_party/bee_ev.c.o
libev.a: CMakeFiles/ev.dir/build.make
libev.a: CMakeFiles/ev.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libev.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ev.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ev.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ev.dir/build: libev.a
.PHONY : CMakeFiles/ev.dir/build

CMakeFiles/ev.dir/requires: CMakeFiles/ev.dir/third_party/bee_ev.c.o.requires
.PHONY : CMakeFiles/ev.dir/requires

CMakeFiles/ev.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ev.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ev.dir/clean

CMakeFiles/ev.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee/CMakeFiles/ev.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ev.dir/depend

