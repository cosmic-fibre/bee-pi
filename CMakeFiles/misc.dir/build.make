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
include CMakeFiles/misc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/misc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/misc.dir/flags.make

CMakeFiles/misc.dir/third_party/crc32.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/crc32.c.o: third_party/crc32.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/crc32.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/crc32.c.o   -c /home/rifto/bee/third_party/crc32.c

CMakeFiles/misc.dir/third_party/crc32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/crc32.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/crc32.c > CMakeFiles/misc.dir/third_party/crc32.c.i

CMakeFiles/misc.dir/third_party/crc32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/crc32.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/crc32.c -o CMakeFiles/misc.dir/third_party/crc32.c.s

CMakeFiles/misc.dir/third_party/crc32.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/crc32.c.o.requires

CMakeFiles/misc.dir/third_party/crc32.c.o.provides: CMakeFiles/misc.dir/third_party/crc32.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/crc32.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/crc32.c.o.provides

CMakeFiles/misc.dir/third_party/crc32.c.o.provides.build: CMakeFiles/misc.dir/third_party/crc32.c.o

CMakeFiles/misc.dir/third_party/sha1.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/sha1.c.o: third_party/sha1.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/sha1.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/sha1.c.o   -c /home/rifto/bee/third_party/sha1.c

CMakeFiles/misc.dir/third_party/sha1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/sha1.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/sha1.c > CMakeFiles/misc.dir/third_party/sha1.c.i

CMakeFiles/misc.dir/third_party/sha1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/sha1.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/sha1.c -o CMakeFiles/misc.dir/third_party/sha1.c.s

CMakeFiles/misc.dir/third_party/sha1.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/sha1.c.o.requires

CMakeFiles/misc.dir/third_party/sha1.c.o.provides: CMakeFiles/misc.dir/third_party/sha1.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/sha1.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/sha1.c.o.provides

CMakeFiles/misc.dir/third_party/sha1.c.o.provides.build: CMakeFiles/misc.dir/third_party/sha1.c.o

CMakeFiles/misc.dir/third_party/proctitle.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/proctitle.c.o: third_party/proctitle.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/proctitle.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/proctitle.c.o   -c /home/rifto/bee/third_party/proctitle.c

CMakeFiles/misc.dir/third_party/proctitle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/proctitle.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/proctitle.c > CMakeFiles/misc.dir/third_party/proctitle.c.i

CMakeFiles/misc.dir/third_party/proctitle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/proctitle.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/proctitle.c -o CMakeFiles/misc.dir/third_party/proctitle.c.s

CMakeFiles/misc.dir/third_party/proctitle.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/proctitle.c.o.requires

CMakeFiles/misc.dir/third_party/proctitle.c.o.provides: CMakeFiles/misc.dir/third_party/proctitle.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/proctitle.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/proctitle.c.o.provides

CMakeFiles/misc.dir/third_party/proctitle.c.o.provides.build: CMakeFiles/misc.dir/third_party/proctitle.c.o

CMakeFiles/misc.dir/third_party/PMurHash.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/PMurHash.c.o: third_party/PMurHash.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/PMurHash.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/PMurHash.c.o   -c /home/rifto/bee/third_party/PMurHash.c

CMakeFiles/misc.dir/third_party/PMurHash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/PMurHash.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/PMurHash.c > CMakeFiles/misc.dir/third_party/PMurHash.c.i

CMakeFiles/misc.dir/third_party/PMurHash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/PMurHash.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/PMurHash.c -o CMakeFiles/misc.dir/third_party/PMurHash.c.s

CMakeFiles/misc.dir/third_party/PMurHash.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/PMurHash.c.o.requires

CMakeFiles/misc.dir/third_party/PMurHash.c.o.provides: CMakeFiles/misc.dir/third_party/PMurHash.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/PMurHash.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/PMurHash.c.o.provides

CMakeFiles/misc.dir/third_party/PMurHash.c.o.provides.build: CMakeFiles/misc.dir/third_party/PMurHash.c.o

CMakeFiles/misc.dir/third_party/base64.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/base64.c.o: third_party/base64.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/base64.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/base64.c.o   -c /home/rifto/bee/third_party/base64.c

CMakeFiles/misc.dir/third_party/base64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/base64.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/base64.c > CMakeFiles/misc.dir/third_party/base64.c.i

CMakeFiles/misc.dir/third_party/base64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/base64.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/base64.c -o CMakeFiles/misc.dir/third_party/base64.c.s

CMakeFiles/misc.dir/third_party/base64.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/base64.c.o.requires

CMakeFiles/misc.dir/third_party/base64.c.o.provides: CMakeFiles/misc.dir/third_party/base64.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/base64.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/base64.c.o.provides

CMakeFiles/misc.dir/third_party/base64.c.o.provides.build: CMakeFiles/misc.dir/third_party/base64.c.o

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o: CMakeFiles/misc.dir/flags.make
CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o: third_party/qsort_arg_mt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o   -c /home/rifto/bee/third_party/qsort_arg_mt.c

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/rifto/bee/third_party/qsort_arg_mt.c > CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.i

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/rifto/bee/third_party/qsort_arg_mt.c -o CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.s

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.requires:
.PHONY : CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.requires

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.provides: CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.requires
	$(MAKE) -f CMakeFiles/misc.dir/build.make CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.provides.build
.PHONY : CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.provides

CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.provides.build: CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o

# Object files for target misc
misc_OBJECTS = \
"CMakeFiles/misc.dir/third_party/crc32.c.o" \
"CMakeFiles/misc.dir/third_party/sha1.c.o" \
"CMakeFiles/misc.dir/third_party/proctitle.c.o" \
"CMakeFiles/misc.dir/third_party/PMurHash.c.o" \
"CMakeFiles/misc.dir/third_party/base64.c.o" \
"CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o"

# External object files for target misc
misc_EXTERNAL_OBJECTS =

libmisc.a: CMakeFiles/misc.dir/third_party/crc32.c.o
libmisc.a: CMakeFiles/misc.dir/third_party/sha1.c.o
libmisc.a: CMakeFiles/misc.dir/third_party/proctitle.c.o
libmisc.a: CMakeFiles/misc.dir/third_party/PMurHash.c.o
libmisc.a: CMakeFiles/misc.dir/third_party/base64.c.o
libmisc.a: CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o
libmisc.a: CMakeFiles/misc.dir/build.make
libmisc.a: CMakeFiles/misc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libmisc.a"
	$(CMAKE_COMMAND) -P CMakeFiles/misc.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/misc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/misc.dir/build: libmisc.a
.PHONY : CMakeFiles/misc.dir/build

CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/crc32.c.o.requires
CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/sha1.c.o.requires
CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/proctitle.c.o.requires
CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/PMurHash.c.o.requires
CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/base64.c.o.requires
CMakeFiles/misc.dir/requires: CMakeFiles/misc.dir/third_party/qsort_arg_mt.c.o.requires
.PHONY : CMakeFiles/misc.dir/requires

CMakeFiles/misc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/misc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/misc.dir/clean

CMakeFiles/misc.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee/CMakeFiles/misc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/misc.dir/depend
