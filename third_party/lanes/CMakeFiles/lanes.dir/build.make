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
include third_party/lanes/CMakeFiles/lanes.dir/depend.make

# Include the progress variables for this target.
include third_party/lanes/CMakeFiles/lanes.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/lanes/CMakeFiles/lanes.dir/flags.make

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o: third_party/lanes/src/lanes.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/lanes.c.o   -c /home/rifto/bee/third_party/lanes/src/lanes.c

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/lanes.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/lanes.c > CMakeFiles/lanes.dir/src/lanes.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/lanes.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/lanes.c -o CMakeFiles/lanes.dir/src/lanes.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o: third_party/lanes/src/deep.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/deep.c.o   -c /home/rifto/bee/third_party/lanes/src/deep.c

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/deep.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/deep.c > CMakeFiles/lanes.dir/src/deep.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/deep.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/deep.c -o CMakeFiles/lanes.dir/src/deep.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o: third_party/lanes/src/threading.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/threading.c.o   -c /home/rifto/bee/third_party/lanes/src/threading.c

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/threading.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/threading.c > CMakeFiles/lanes.dir/src/threading.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/threading.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/threading.c -o CMakeFiles/lanes.dir/src/threading.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o: third_party/lanes/src/tools.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/tools.c.o   -c /home/rifto/bee/third_party/lanes/src/tools.c

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/tools.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/tools.c > CMakeFiles/lanes.dir/src/tools.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/tools.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/tools.c -o CMakeFiles/lanes.dir/src/tools.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o: third_party/lanes/src/keeper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/keeper.c.o   -c /home/rifto/bee/third_party/lanes/src/keeper.c

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/keeper.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/keeper.c > CMakeFiles/lanes.dir/src/keeper.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/keeper.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/keeper.c -o CMakeFiles/lanes.dir/src/keeper.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o: third_party/lanes/CMakeFiles/lanes.dir/flags.make
third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o: third_party/lanes/src/compat.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lanes.dir/src/compat.c.o   -c /home/rifto/bee/third_party/lanes/src/compat.c

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lanes.dir/src/compat.c.i"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/lanes/src/compat.c > CMakeFiles/lanes.dir/src/compat.c.i

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lanes.dir/src/compat.c.s"
	cd /home/rifto/bee/third_party/lanes && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/lanes/src/compat.c -o CMakeFiles/lanes.dir/src/compat.c.s

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.requires:
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.requires

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.provides: third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.requires
	$(MAKE) -f third_party/lanes/CMakeFiles/lanes.dir/build.make third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.provides.build
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.provides

third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.provides.build: third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o

# Object files for target lanes
lanes_OBJECTS = \
"CMakeFiles/lanes.dir/src/lanes.c.o" \
"CMakeFiles/lanes.dir/src/deep.c.o" \
"CMakeFiles/lanes.dir/src/threading.c.o" \
"CMakeFiles/lanes.dir/src/tools.c.o" \
"CMakeFiles/lanes.dir/src/keeper.c.o" \
"CMakeFiles/lanes.dir/src/compat.c.o"

# External object files for target lanes
lanes_EXTERNAL_OBJECTS =

third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/build.make
third_party/lanes/lanes.so: /usr/lib/arm-linux-gnueabihf/liblua5.1.so
third_party/lanes/lanes.so: third_party/lanes/CMakeFiles/lanes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared module lanes.so"
	cd /home/rifto/bee/third_party/lanes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lanes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/lanes/CMakeFiles/lanes.dir/build: third_party/lanes/lanes.so
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/build

third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/lanes.c.o.requires
third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/deep.c.o.requires
third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/threading.c.o.requires
third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/tools.c.o.requires
third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/keeper.c.o.requires
third_party/lanes/CMakeFiles/lanes.dir/requires: third_party/lanes/CMakeFiles/lanes.dir/src/compat.c.o.requires
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/requires

third_party/lanes/CMakeFiles/lanes.dir/clean:
	cd /home/rifto/bee/third_party/lanes && $(CMAKE_COMMAND) -P CMakeFiles/lanes.dir/cmake_clean.cmake
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/clean

third_party/lanes/CMakeFiles/lanes.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee/third_party/lanes /home/rifto/bee /home/rifto/bee/third_party/lanes /home/rifto/bee/third_party/lanes/CMakeFiles/lanes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/lanes/CMakeFiles/lanes.dir/depend

