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
include CMakeFiles/yaml.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yaml.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yaml.dir/flags.make

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o: third_party/lua-yaml/lyaml.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -std=gnu++0x -D__STDC_FORMAT_MACROS=1 -D__STDC_LIMIT_MACROS=1 -o CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o -c /home/rifto/bee/third_party/lua-yaml/lyaml.cc

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -std=gnu++0x -D__STDC_FORMAT_MACROS=1 -D__STDC_LIMIT_MACROS=1 -E /home/rifto/bee/third_party/lua-yaml/lyaml.cc > CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.i

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -std=gnu++0x -D__STDC_FORMAT_MACROS=1 -D__STDC_LIMIT_MACROS=1 -S /home/rifto/bee/third_party/lua-yaml/lyaml.cc -o CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.s

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o: third_party/lua-yaml/api.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o   -c /home/rifto/bee/third_party/lua-yaml/api.c

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/api.c > CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/api.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o: third_party/lua-yaml/dumper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o   -c /home/rifto/bee/third_party/lua-yaml/dumper.c

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/dumper.c > CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/dumper.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o: third_party/lua-yaml/emitter.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o   -c /home/rifto/bee/third_party/lua-yaml/emitter.c

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/emitter.c > CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/emitter.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o: third_party/lua-yaml/loader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o   -c /home/rifto/bee/third_party/lua-yaml/loader.c

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/loader.c > CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/loader.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o: third_party/lua-yaml/parser.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o   -c /home/rifto/bee/third_party/lua-yaml/parser.c

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/parser.c > CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/parser.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o: third_party/lua-yaml/reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o   -c /home/rifto/bee/third_party/lua-yaml/reader.c

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/reader.c > CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/reader.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o: third_party/lua-yaml/scanner.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o   -c /home/rifto/bee/third_party/lua-yaml/scanner.c

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/scanner.c > CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/scanner.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o: third_party/lua-yaml/writer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o   -c /home/rifto/bee/third_party/lua-yaml/writer.c

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/writer.c > CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/writer.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o: CMakeFiles/yaml.dir/flags.make
CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o: third_party/lua-yaml/b64.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rifto/bee/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -o CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o   -c /home/rifto/bee/third_party/lua-yaml/b64.c

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -E /home/rifto/bee/third_party/lua-yaml/b64.c > CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.i

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -std=c99 -I"/home/rifto/bee/third_party/lua-yaml" -S /home/rifto/bee/third_party/lua-yaml/b64.c -o CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.s

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.requires:
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.requires

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.provides: CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.requires
	$(MAKE) -f CMakeFiles/yaml.dir/build.make CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.provides.build
.PHONY : CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.provides

CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.provides.build: CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o

# Object files for target yaml
yaml_OBJECTS = \
"CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o" \
"CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o"

# External object files for target yaml
yaml_EXTERNAL_OBJECTS =

libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o
libyaml.a: CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o
libyaml.a: CMakeFiles/yaml.dir/build.make
libyaml.a: CMakeFiles/yaml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libyaml.a"
	$(CMAKE_COMMAND) -P CMakeFiles/yaml.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yaml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yaml.dir/build: libyaml.a
.PHONY : CMakeFiles/yaml.dir/build

CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/lyaml.cc.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/api.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/dumper.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/emitter.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/loader.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/parser.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/reader.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/scanner.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/writer.c.o.requires
CMakeFiles/yaml.dir/requires: CMakeFiles/yaml.dir/third_party/lua-yaml/b64.c.o.requires
.PHONY : CMakeFiles/yaml.dir/requires

CMakeFiles/yaml.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yaml.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yaml.dir/clean

CMakeFiles/yaml.dir/depend:
	cd /home/rifto/bee && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee /home/rifto/bee/CMakeFiles/yaml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yaml.dir/depend

