# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/potatojs/Desktop/cmake/libaries_turtorial/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/potatomaths.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/potatomaths.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/potatomaths.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/potatomaths.dir/flags.make

CMakeFiles/potatomaths.dir/adder.cxx.o: CMakeFiles/potatomaths.dir/flags.make
CMakeFiles/potatomaths.dir/adder.cxx.o: /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/adder.cxx
CMakeFiles/potatomaths.dir/adder.cxx.o: CMakeFiles/potatomaths.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/potatomaths.dir/adder.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/potatomaths.dir/adder.cxx.o -MF CMakeFiles/potatomaths.dir/adder.cxx.o.d -o CMakeFiles/potatomaths.dir/adder.cxx.o -c /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/adder.cxx

CMakeFiles/potatomaths.dir/adder.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/potatomaths.dir/adder.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/adder.cxx > CMakeFiles/potatomaths.dir/adder.cxx.i

CMakeFiles/potatomaths.dir/adder.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/potatomaths.dir/adder.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/adder.cxx -o CMakeFiles/potatomaths.dir/adder.cxx.s

# Object files for target potatomaths
potatomaths_OBJECTS = \
"CMakeFiles/potatomaths.dir/adder.cxx.o"

# External object files for target potatomaths
potatomaths_EXTERNAL_OBJECTS =

/home/potatojs/Desktop/cmake/libaries_turtorial/cpp/lib/libpotatomaths.a: CMakeFiles/potatomaths.dir/adder.cxx.o
/home/potatojs/Desktop/cmake/libaries_turtorial/cpp/lib/libpotatomaths.a: CMakeFiles/potatomaths.dir/build.make
/home/potatojs/Desktop/cmake/libaries_turtorial/cpp/lib/libpotatomaths.a: CMakeFiles/potatomaths.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/lib/libpotatomaths.a"
	$(CMAKE_COMMAND) -P CMakeFiles/potatomaths.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/potatomaths.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/potatomaths.dir/build: /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/lib/libpotatomaths.a
.PHONY : CMakeFiles/potatomaths.dir/build

CMakeFiles/potatomaths.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/potatomaths.dir/cmake_clean.cmake
.PHONY : CMakeFiles/potatomaths.dir/clean

CMakeFiles/potatomaths.dir/depend:
	cd /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/potatojs/Desktop/cmake/libaries_turtorial/cpp /home/potatojs/Desktop/cmake/libaries_turtorial/cpp /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build /home/potatojs/Desktop/cmake/libaries_turtorial/cpp/build/CMakeFiles/potatomaths.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/potatomaths.dir/depend
