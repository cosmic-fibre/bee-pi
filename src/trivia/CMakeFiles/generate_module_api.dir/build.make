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

# Utility rule file for generate_module_api.

# Include the progress variables for this target.
include src/trivia/CMakeFiles/generate_module_api.dir/progress.make

src/trivia/CMakeFiles/generate_module_api: src/trivia/bee.h

src/trivia/bee.h: src/trivia/bee_header.h
src/trivia/bee.h: src/trivia/bee_footer.h
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating bee.h"
	cd /home/rifto/bee/src/trivia && cat /home/rifto/bee/src/trivia/bee_header.h > /home/rifto/bee/src/trivia/bee.h.new
	cd /home/rifto/bee/src/trivia && cat /home/rifto/bee/src/trivia/config.h /home/rifto/bee/src/trivia/../say.h /home/rifto/bee/src/trivia/../coeio.h /home/rifto/bee/src/trivia/../lua/utils.h | /home/rifto/bee/extra/apigen >> /home/rifto/bee/src/trivia/bee.h.new
	cd /home/rifto/bee/src/trivia && cat /home/rifto/bee/src/trivia/bee_footer.h >> /home/rifto/bee/src/trivia/bee.h.new
	cd /home/rifto/bee/src/trivia && /usr/bin/cmake -E copy_if_different /home/rifto/bee/src/trivia/bee.h.new /home/rifto/bee/src/trivia/bee.h
	cd /home/rifto/bee/src/trivia && /usr/bin/cmake -E remove /home/rifto/bee/src/trivia/bee.h.new

generate_module_api: src/trivia/CMakeFiles/generate_module_api
generate_module_api: src/trivia/bee.h
generate_module_api: src/trivia/CMakeFiles/generate_module_api.dir/build.make
.PHONY : generate_module_api

# Rule to build all files generated by this target.
src/trivia/CMakeFiles/generate_module_api.dir/build: generate_module_api
.PHONY : src/trivia/CMakeFiles/generate_module_api.dir/build

src/trivia/CMakeFiles/generate_module_api.dir/clean:
	cd /home/rifto/bee/src/trivia && $(CMAKE_COMMAND) -P CMakeFiles/generate_module_api.dir/cmake_clean.cmake
.PHONY : src/trivia/CMakeFiles/generate_module_api.dir/clean

src/trivia/CMakeFiles/generate_module_api.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/src/trivia /home/rifto/bee /home/rifto/bee/src/trivia /home/rifto/bee/src/trivia/CMakeFiles/generate_module_api.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/trivia/CMakeFiles/generate_module_api.dir/depend

