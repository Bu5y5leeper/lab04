# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/_build

# Include any dependencies generated for this target.
include /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/compiler_depend.make

# Include the progress variables for this target.
include /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/progress.make

# Include the compile flags for this target's objects.
include /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/flags.make

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/flags.make
/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_lib/formatter.cpp
/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o"
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o -MF CMakeFiles/formatter.dir/formatter.cpp.o.d -o CMakeFiles/formatter.dir/formatter.cpp.o -c /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_lib/formatter.cpp

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/formatter.dir/formatter.cpp.i"
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_lib/formatter.cpp > CMakeFiles/formatter.dir/formatter.cpp.i

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/formatter.dir/formatter.cpp.s"
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_lib/formatter.cpp -o CMakeFiles/formatter.dir/formatter.cpp.s

# Object files for target formatter
formatter_OBJECTS = \
"CMakeFiles/formatter.dir/formatter.cpp.o"

# External object files for target formatter
formatter_EXTERNAL_OBJECTS =

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/libformatter.a: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/formatter.cpp.o
/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/libformatter.a: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/build.make
/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/libformatter.a: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libformatter.a"
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && $(CMAKE_COMMAND) -P CMakeFiles/formatter.dir/cmake_clean_target.cmake
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/formatter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/build: /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/libformatter.a
.PHONY : /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/build

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/clean:
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter && $(CMAKE_COMMAND) -P CMakeFiles/formatter.dir/cmake_clean.cmake
.PHONY : /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/clean

/home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/depend:
	cd /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_lib /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/_build /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /home/bu5y/Bu5y5leeper/workspace/projects/lab03_dz/formatter_ex_lib/formatter/CMakeFiles/formatter.dir/depend

