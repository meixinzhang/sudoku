# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mx/projects/sudoku

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mx/projects/sudoku/build

# Include any dependencies generated for this target.
include src/CMakeFiles/sudoku.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/sudoku.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/sudoku.dir/flags.make

src/CMakeFiles/sudoku.dir/main.c.o: src/CMakeFiles/sudoku.dir/flags.make
src/CMakeFiles/sudoku.dir/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mx/projects/sudoku/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/sudoku.dir/main.c.o"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sudoku.dir/main.c.o   -c /home/mx/projects/sudoku/src/main.c

src/CMakeFiles/sudoku.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sudoku.dir/main.c.i"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mx/projects/sudoku/src/main.c > CMakeFiles/sudoku.dir/main.c.i

src/CMakeFiles/sudoku.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sudoku.dir/main.c.s"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mx/projects/sudoku/src/main.c -o CMakeFiles/sudoku.dir/main.c.s

src/CMakeFiles/sudoku.dir/main.c.o.requires:

.PHONY : src/CMakeFiles/sudoku.dir/main.c.o.requires

src/CMakeFiles/sudoku.dir/main.c.o.provides: src/CMakeFiles/sudoku.dir/main.c.o.requires
	$(MAKE) -f src/CMakeFiles/sudoku.dir/build.make src/CMakeFiles/sudoku.dir/main.c.o.provides.build
.PHONY : src/CMakeFiles/sudoku.dir/main.c.o.provides

src/CMakeFiles/sudoku.dir/main.c.o.provides.build: src/CMakeFiles/sudoku.dir/main.c.o


src/CMakeFiles/sudoku.dir/sudoku.c.o: src/CMakeFiles/sudoku.dir/flags.make
src/CMakeFiles/sudoku.dir/sudoku.c.o: ../src/sudoku.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mx/projects/sudoku/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/sudoku.dir/sudoku.c.o"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sudoku.dir/sudoku.c.o   -c /home/mx/projects/sudoku/src/sudoku.c

src/CMakeFiles/sudoku.dir/sudoku.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sudoku.dir/sudoku.c.i"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mx/projects/sudoku/src/sudoku.c > CMakeFiles/sudoku.dir/sudoku.c.i

src/CMakeFiles/sudoku.dir/sudoku.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sudoku.dir/sudoku.c.s"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mx/projects/sudoku/src/sudoku.c -o CMakeFiles/sudoku.dir/sudoku.c.s

src/CMakeFiles/sudoku.dir/sudoku.c.o.requires:

.PHONY : src/CMakeFiles/sudoku.dir/sudoku.c.o.requires

src/CMakeFiles/sudoku.dir/sudoku.c.o.provides: src/CMakeFiles/sudoku.dir/sudoku.c.o.requires
	$(MAKE) -f src/CMakeFiles/sudoku.dir/build.make src/CMakeFiles/sudoku.dir/sudoku.c.o.provides.build
.PHONY : src/CMakeFiles/sudoku.dir/sudoku.c.o.provides

src/CMakeFiles/sudoku.dir/sudoku.c.o.provides.build: src/CMakeFiles/sudoku.dir/sudoku.c.o


src/CMakeFiles/sudoku.dir/grid.c.o: src/CMakeFiles/sudoku.dir/flags.make
src/CMakeFiles/sudoku.dir/grid.c.o: ../src/grid.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mx/projects/sudoku/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/sudoku.dir/grid.c.o"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sudoku.dir/grid.c.o   -c /home/mx/projects/sudoku/src/grid.c

src/CMakeFiles/sudoku.dir/grid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sudoku.dir/grid.c.i"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mx/projects/sudoku/src/grid.c > CMakeFiles/sudoku.dir/grid.c.i

src/CMakeFiles/sudoku.dir/grid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sudoku.dir/grid.c.s"
	cd /home/mx/projects/sudoku/build/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mx/projects/sudoku/src/grid.c -o CMakeFiles/sudoku.dir/grid.c.s

src/CMakeFiles/sudoku.dir/grid.c.o.requires:

.PHONY : src/CMakeFiles/sudoku.dir/grid.c.o.requires

src/CMakeFiles/sudoku.dir/grid.c.o.provides: src/CMakeFiles/sudoku.dir/grid.c.o.requires
	$(MAKE) -f src/CMakeFiles/sudoku.dir/build.make src/CMakeFiles/sudoku.dir/grid.c.o.provides.build
.PHONY : src/CMakeFiles/sudoku.dir/grid.c.o.provides

src/CMakeFiles/sudoku.dir/grid.c.o.provides.build: src/CMakeFiles/sudoku.dir/grid.c.o


# Object files for target sudoku
sudoku_OBJECTS = \
"CMakeFiles/sudoku.dir/main.c.o" \
"CMakeFiles/sudoku.dir/sudoku.c.o" \
"CMakeFiles/sudoku.dir/grid.c.o"

# External object files for target sudoku
sudoku_EXTERNAL_OBJECTS =

src/sudoku: src/CMakeFiles/sudoku.dir/main.c.o
src/sudoku: src/CMakeFiles/sudoku.dir/sudoku.c.o
src/sudoku: src/CMakeFiles/sudoku.dir/grid.c.o
src/sudoku: src/CMakeFiles/sudoku.dir/build.make
src/sudoku: src/CMakeFiles/sudoku.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mx/projects/sudoku/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable sudoku"
	cd /home/mx/projects/sudoku/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sudoku.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/sudoku.dir/build: src/sudoku

.PHONY : src/CMakeFiles/sudoku.dir/build

src/CMakeFiles/sudoku.dir/requires: src/CMakeFiles/sudoku.dir/main.c.o.requires
src/CMakeFiles/sudoku.dir/requires: src/CMakeFiles/sudoku.dir/sudoku.c.o.requires
src/CMakeFiles/sudoku.dir/requires: src/CMakeFiles/sudoku.dir/grid.c.o.requires

.PHONY : src/CMakeFiles/sudoku.dir/requires

src/CMakeFiles/sudoku.dir/clean:
	cd /home/mx/projects/sudoku/build/src && $(CMAKE_COMMAND) -P CMakeFiles/sudoku.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/sudoku.dir/clean

src/CMakeFiles/sudoku.dir/depend:
	cd /home/mx/projects/sudoku/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mx/projects/sudoku /home/mx/projects/sudoku/src /home/mx/projects/sudoku/build /home/mx/projects/sudoku/build/src /home/mx/projects/sudoku/build/src/CMakeFiles/sudoku.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/sudoku.dir/depend
