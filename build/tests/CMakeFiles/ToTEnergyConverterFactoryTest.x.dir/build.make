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
include tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/flags.make

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/flags.make
tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o: ../ToTEnergyConverterFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverterFactory.cpp

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverterFactory.cpp > CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.i

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverterFactory.cpp -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.s

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/flags.make
tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o: ../tests/ToTEnergyConverterFactoryTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/ToTEnergyConverterFactoryTest.cpp

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/ToTEnergyConverterFactoryTest.cpp > CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.i

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests/ToTEnergyConverterFactoryTest.cpp -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.s

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/flags.make
tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o: ../ToTEnergyConverter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o -c /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.i"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp > CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.i

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.s"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/ToTEnergyConverter.cpp -o CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.s

# Object files for target ToTEnergyConverterFactoryTest.x
ToTEnergyConverterFactoryTest_x_OBJECTS = \
"CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o" \
"CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o" \
"CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o"

# External object files for target ToTEnergyConverterFactoryTest.x
ToTEnergyConverterFactoryTest_x_EXTERNAL_OBJECTS =

tests/ToTEnergyConverterFactoryTest.x: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverterFactory.cpp.o
tests/ToTEnergyConverterFactoryTest.x: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/ToTEnergyConverterFactoryTest.cpp.o
tests/ToTEnergyConverterFactoryTest.x: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/__/ToTEnergyConverter.cpp.o
tests/ToTEnergyConverterFactoryTest.x: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/build.make
tests/ToTEnergyConverterFactoryTest.x: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so.1.71.0
tests/ToTEnergyConverterFactoryTest.x: tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ToTEnergyConverterFactoryTest.x"
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/build: tests/ToTEnergyConverterFactoryTest.x

.PHONY : tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/build

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/clean:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/clean

tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/depend:
	cd /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests /home/justyna/j-pet-framework-examples/LargeBarrelAnalysis/build/tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ToTEnergyConverterFactoryTest.x.dir/depend

