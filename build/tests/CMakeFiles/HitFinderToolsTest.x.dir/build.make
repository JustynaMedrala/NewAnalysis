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
include tests/CMakeFiles/HitFinderToolsTest.x.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/HitFinderToolsTest.x.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/HitFinderToolsTest.x.dir/flags.make

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o: tests/CMakeFiles/HitFinderToolsTest.x.dir/flags.make
tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o: ../HitFinderTools.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/HitFinderTools.cpp

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/HitFinderTools.cpp > CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.i

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/HitFinderTools.cpp -o CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.s

tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o: tests/CMakeFiles/HitFinderToolsTest.x.dir/flags.make
tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o: ../tests/HitFinderToolsTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/HitFinderToolsTest.cpp

tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/HitFinderToolsTest.cpp > CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.i

tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/HitFinderToolsTest.cpp -o CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.s

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o: tests/CMakeFiles/HitFinderToolsTest.x.dir/flags.make
tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o: ../UniversalFileLoader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp > CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.i

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/UniversalFileLoader.cpp -o CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.s

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o: tests/CMakeFiles/HitFinderToolsTest.x.dir/flags.make
tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o: ../ToTEnergyConverter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp > CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.i

tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp -o CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.s

# Object files for target HitFinderToolsTest.x
HitFinderToolsTest_x_OBJECTS = \
"CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o" \
"CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o" \
"CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o" \
"CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o"

# External object files for target HitFinderToolsTest.x
HitFinderToolsTest_x_EXTERNAL_OBJECTS =

tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/__/HitFinderTools.cpp.o
tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/HitFinderToolsTest.cpp.o
tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/__/UniversalFileLoader.cpp.o
tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/__/ToTEnergyConverter.cpp.o
tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/build.make
tests/HitFinderToolsTest.x: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.71.0
tests/HitFinderToolsTest.x: tests/CMakeFiles/HitFinderToolsTest.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable HitFinderToolsTest.x"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HitFinderToolsTest.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/HitFinderToolsTest.x.dir/build: tests/HitFinderToolsTest.x

.PHONY : tests/CMakeFiles/HitFinderToolsTest.x.dir/build

tests/CMakeFiles/HitFinderToolsTest.x.dir/clean:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/HitFinderToolsTest.x.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/HitFinderToolsTest.x.dir/clean

tests/CMakeFiles/HitFinderToolsTest.x.dir/depend:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests/CMakeFiles/HitFinderToolsTest.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/HitFinderToolsTest.x.dir/depend

