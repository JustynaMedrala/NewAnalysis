# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/UniversalFileLoaderTest.x.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/UniversalFileLoaderTest.x.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/UniversalFileLoaderTest.x.dir/flags.make

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/flags.make
tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o: ../UniversalFileLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp > CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.i

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp -o CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.s

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/flags.make
tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o: ../tests/UniversalFileLoaderTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/UniversalFileLoaderTest.cpp

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/UniversalFileLoaderTest.cpp > CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.i

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/UniversalFileLoaderTest.cpp -o CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.s

# Object files for target UniversalFileLoaderTest.x
UniversalFileLoaderTest_x_OBJECTS = \
"CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o" \
"CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o"

# External object files for target UniversalFileLoaderTest.x
UniversalFileLoaderTest_x_EXTERNAL_OBJECTS =

tests/UniversalFileLoaderTest.x: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/__/UniversalFileLoader.cpp.o
tests/UniversalFileLoaderTest.x: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/UniversalFileLoaderTest.cpp.o
tests/UniversalFileLoaderTest.x: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/build.make
tests/UniversalFileLoaderTest.x: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.71.0
tests/UniversalFileLoaderTest.x: tests/CMakeFiles/UniversalFileLoaderTest.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable UniversalFileLoaderTest.x"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UniversalFileLoaderTest.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/UniversalFileLoaderTest.x.dir/build: tests/UniversalFileLoaderTest.x

.PHONY : tests/CMakeFiles/UniversalFileLoaderTest.x.dir/build

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/clean:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/UniversalFileLoaderTest.x.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/UniversalFileLoaderTest.x.dir/clean

tests/CMakeFiles/UniversalFileLoaderTest.x.dir/depend:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests/CMakeFiles/UniversalFileLoaderTest.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/UniversalFileLoaderTest.x.dir/depend
