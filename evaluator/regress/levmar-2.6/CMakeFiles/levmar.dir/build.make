# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.3.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6

# Include any dependencies generated for this target.
include CMakeFiles/levmar.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/levmar.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/levmar.dir/flags.make

CMakeFiles/levmar.dir/lm.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/lm.c.o: lm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/levmar.dir/lm.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/lm.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lm.c

CMakeFiles/levmar.dir/lm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/lm.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lm.c > CMakeFiles/levmar.dir/lm.c.i

CMakeFiles/levmar.dir/lm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/lm.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lm.c -o CMakeFiles/levmar.dir/lm.c.s

CMakeFiles/levmar.dir/lm.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/lm.c.o.requires

CMakeFiles/levmar.dir/lm.c.o.provides: CMakeFiles/levmar.dir/lm.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/lm.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/lm.c.o.provides

CMakeFiles/levmar.dir/lm.c.o.provides.build: CMakeFiles/levmar.dir/lm.c.o


CMakeFiles/levmar.dir/Axb.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/Axb.c.o: Axb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/levmar.dir/Axb.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/Axb.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/Axb.c

CMakeFiles/levmar.dir/Axb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/Axb.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/Axb.c > CMakeFiles/levmar.dir/Axb.c.i

CMakeFiles/levmar.dir/Axb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/Axb.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/Axb.c -o CMakeFiles/levmar.dir/Axb.c.s

CMakeFiles/levmar.dir/Axb.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/Axb.c.o.requires

CMakeFiles/levmar.dir/Axb.c.o.provides: CMakeFiles/levmar.dir/Axb.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/Axb.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/Axb.c.o.provides

CMakeFiles/levmar.dir/Axb.c.o.provides.build: CMakeFiles/levmar.dir/Axb.c.o


CMakeFiles/levmar.dir/misc.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/misc.c.o: misc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/levmar.dir/misc.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/misc.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/misc.c

CMakeFiles/levmar.dir/misc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/misc.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/misc.c > CMakeFiles/levmar.dir/misc.c.i

CMakeFiles/levmar.dir/misc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/misc.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/misc.c -o CMakeFiles/levmar.dir/misc.c.s

CMakeFiles/levmar.dir/misc.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/misc.c.o.requires

CMakeFiles/levmar.dir/misc.c.o.provides: CMakeFiles/levmar.dir/misc.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/misc.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/misc.c.o.provides

CMakeFiles/levmar.dir/misc.c.o.provides.build: CMakeFiles/levmar.dir/misc.c.o


CMakeFiles/levmar.dir/lmlec.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/lmlec.c.o: lmlec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/levmar.dir/lmlec.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/lmlec.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmlec.c

CMakeFiles/levmar.dir/lmlec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/lmlec.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmlec.c > CMakeFiles/levmar.dir/lmlec.c.i

CMakeFiles/levmar.dir/lmlec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/lmlec.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmlec.c -o CMakeFiles/levmar.dir/lmlec.c.s

CMakeFiles/levmar.dir/lmlec.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/lmlec.c.o.requires

CMakeFiles/levmar.dir/lmlec.c.o.provides: CMakeFiles/levmar.dir/lmlec.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/lmlec.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/lmlec.c.o.provides

CMakeFiles/levmar.dir/lmlec.c.o.provides.build: CMakeFiles/levmar.dir/lmlec.c.o


CMakeFiles/levmar.dir/lmbc.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/lmbc.c.o: lmbc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/levmar.dir/lmbc.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/lmbc.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbc.c

CMakeFiles/levmar.dir/lmbc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/lmbc.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbc.c > CMakeFiles/levmar.dir/lmbc.c.i

CMakeFiles/levmar.dir/lmbc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/lmbc.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbc.c -o CMakeFiles/levmar.dir/lmbc.c.s

CMakeFiles/levmar.dir/lmbc.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/lmbc.c.o.requires

CMakeFiles/levmar.dir/lmbc.c.o.provides: CMakeFiles/levmar.dir/lmbc.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/lmbc.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/lmbc.c.o.provides

CMakeFiles/levmar.dir/lmbc.c.o.provides.build: CMakeFiles/levmar.dir/lmbc.c.o


CMakeFiles/levmar.dir/lmblec.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/lmblec.c.o: lmblec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/levmar.dir/lmblec.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/lmblec.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmblec.c

CMakeFiles/levmar.dir/lmblec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/lmblec.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmblec.c > CMakeFiles/levmar.dir/lmblec.c.i

CMakeFiles/levmar.dir/lmblec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/lmblec.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmblec.c -o CMakeFiles/levmar.dir/lmblec.c.s

CMakeFiles/levmar.dir/lmblec.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/lmblec.c.o.requires

CMakeFiles/levmar.dir/lmblec.c.o.provides: CMakeFiles/levmar.dir/lmblec.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/lmblec.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/lmblec.c.o.provides

CMakeFiles/levmar.dir/lmblec.c.o.provides.build: CMakeFiles/levmar.dir/lmblec.c.o


CMakeFiles/levmar.dir/lmbleic.c.o: CMakeFiles/levmar.dir/flags.make
CMakeFiles/levmar.dir/lmbleic.c.o: lmbleic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/levmar.dir/lmbleic.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/levmar.dir/lmbleic.c.o   -c /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbleic.c

CMakeFiles/levmar.dir/lmbleic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/levmar.dir/lmbleic.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbleic.c > CMakeFiles/levmar.dir/lmbleic.c.i

CMakeFiles/levmar.dir/lmbleic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/levmar.dir/lmbleic.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/lmbleic.c -o CMakeFiles/levmar.dir/lmbleic.c.s

CMakeFiles/levmar.dir/lmbleic.c.o.requires:

.PHONY : CMakeFiles/levmar.dir/lmbleic.c.o.requires

CMakeFiles/levmar.dir/lmbleic.c.o.provides: CMakeFiles/levmar.dir/lmbleic.c.o.requires
	$(MAKE) -f CMakeFiles/levmar.dir/build.make CMakeFiles/levmar.dir/lmbleic.c.o.provides.build
.PHONY : CMakeFiles/levmar.dir/lmbleic.c.o.provides

CMakeFiles/levmar.dir/lmbleic.c.o.provides.build: CMakeFiles/levmar.dir/lmbleic.c.o


# Object files for target levmar
levmar_OBJECTS = \
"CMakeFiles/levmar.dir/lm.c.o" \
"CMakeFiles/levmar.dir/Axb.c.o" \
"CMakeFiles/levmar.dir/misc.c.o" \
"CMakeFiles/levmar.dir/lmlec.c.o" \
"CMakeFiles/levmar.dir/lmbc.c.o" \
"CMakeFiles/levmar.dir/lmblec.c.o" \
"CMakeFiles/levmar.dir/lmbleic.c.o"

# External object files for target levmar
levmar_EXTERNAL_OBJECTS =

liblevmar.a: CMakeFiles/levmar.dir/lm.c.o
liblevmar.a: CMakeFiles/levmar.dir/Axb.c.o
liblevmar.a: CMakeFiles/levmar.dir/misc.c.o
liblevmar.a: CMakeFiles/levmar.dir/lmlec.c.o
liblevmar.a: CMakeFiles/levmar.dir/lmbc.c.o
liblevmar.a: CMakeFiles/levmar.dir/lmblec.c.o
liblevmar.a: CMakeFiles/levmar.dir/lmbleic.c.o
liblevmar.a: CMakeFiles/levmar.dir/build.make
liblevmar.a: CMakeFiles/levmar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library liblevmar.a"
	$(CMAKE_COMMAND) -P CMakeFiles/levmar.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/levmar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/levmar.dir/build: liblevmar.a

.PHONY : CMakeFiles/levmar.dir/build

CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/lm.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/Axb.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/misc.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/lmlec.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/lmbc.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/lmblec.c.o.requires
CMakeFiles/levmar.dir/requires: CMakeFiles/levmar.dir/lmbleic.c.o.requires

.PHONY : CMakeFiles/levmar.dir/requires

CMakeFiles/levmar.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/levmar.dir/cmake_clean.cmake
.PHONY : CMakeFiles/levmar.dir/clean

CMakeFiles/levmar.dir/depend:
	cd /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6 /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6 /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6 /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6 /Users/tony/gocode/src/github.com/verdverm/pypge/evaluator/regress/levmar-2.6/CMakeFiles/levmar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/levmar.dir/depend

