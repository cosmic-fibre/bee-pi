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

# Utility rule file for build_bundled_libs.

# Include the progress variables for this target.
include CMakeFiles/build_bundled_libs.dir/progress.make

CMakeFiles/build_bundled_libs:

build_bundled_libs: CMakeFiles/build_bundled_libs
build_bundled_libs: CMakeFiles/build_bundled_libs.dir/build.make
.PHONY : build_bundled_libs

# Rule to build all files generated by this target.
CMakeFiles/build_bundled_libs.dir/build: build_bundled_libs
.PHONY : CMakeFiles/build_bundled_libs.dir/build

CMakeFiles/build_bundled_libs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/build_bundled_libs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/build_bundled_libs.dir/clean

CMakeFiles/build_bundled_libs.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee/CMakeFiles/build_bundled_libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/build_bundled_libs.dir/depend

