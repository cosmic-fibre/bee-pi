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

# Utility rule file for ragel.

# Include the progress variables for this target.
include src/CMakeFiles/ragel.dir/progress.make

src/CMakeFiles/ragel:
	ragel -G2 src/uri.rl -o src/uri.c

ragel: src/CMakeFiles/ragel
ragel: src/CMakeFiles/ragel.dir/build.make
.PHONY : ragel

# Rule to build all files generated by this target.
src/CMakeFiles/ragel.dir/build: ragel
.PHONY : src/CMakeFiles/ragel.dir/build

src/CMakeFiles/ragel.dir/clean:
	cd /home/rifto/bee/src && $(CMAKE_COMMAND) -P CMakeFiles/ragel.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ragel.dir/clean

src/CMakeFiles/ragel.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/src /home/rifto/bee /home/rifto/bee/src /home/rifto/bee/src/CMakeFiles/ragel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ragel.dir/depend

