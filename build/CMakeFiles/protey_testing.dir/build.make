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
CMAKE_SOURCE_DIR = /home/boldyrev/testing/protey

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/boldyrev/testing/protey/build

# Include any dependencies generated for this target.
include CMakeFiles/protey_testing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/protey_testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/protey_testing.dir/flags.make

CMakeFiles/protey_testing.dir/main.cpp.o: CMakeFiles/protey_testing.dir/flags.make
CMakeFiles/protey_testing.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boldyrev/testing/protey/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/protey_testing.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protey_testing.dir/main.cpp.o -c /home/boldyrev/testing/protey/main.cpp

CMakeFiles/protey_testing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protey_testing.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boldyrev/testing/protey/main.cpp > CMakeFiles/protey_testing.dir/main.cpp.i

CMakeFiles/protey_testing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protey_testing.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boldyrev/testing/protey/main.cpp -o CMakeFiles/protey_testing.dir/main.cpp.s

CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o: CMakeFiles/protey_testing.dir/flags.make
CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o: /home/boldyrev/protey_client/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boldyrev/testing/protey/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o -c /home/boldyrev/protey_client/Client.cpp

CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boldyrev/protey_client/Client.cpp > CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.i

CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boldyrev/protey_client/Client.cpp -o CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.s

CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o: CMakeFiles/protey_testing.dir/flags.make
CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o: /home/boldyrev/protey_server/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/boldyrev/testing/protey/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o -c /home/boldyrev/protey_server/Server.cpp

CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/boldyrev/protey_server/Server.cpp > CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.i

CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/boldyrev/protey_server/Server.cpp -o CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.s

# Object files for target protey_testing
protey_testing_OBJECTS = \
"CMakeFiles/protey_testing.dir/main.cpp.o" \
"CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o" \
"CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o"

# External object files for target protey_testing
protey_testing_EXTERNAL_OBJECTS =

protey_testing: CMakeFiles/protey_testing.dir/main.cpp.o
protey_testing: CMakeFiles/protey_testing.dir/home/boldyrev/protey_client/Client.cpp.o
protey_testing: CMakeFiles/protey_testing.dir/home/boldyrev/protey_server/Server.cpp.o
protey_testing: CMakeFiles/protey_testing.dir/build.make
protey_testing: CMakeFiles/protey_testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/boldyrev/testing/protey/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable protey_testing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/protey_testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/protey_testing.dir/build: protey_testing

.PHONY : CMakeFiles/protey_testing.dir/build

CMakeFiles/protey_testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/protey_testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/protey_testing.dir/clean

CMakeFiles/protey_testing.dir/depend:
	cd /home/boldyrev/testing/protey/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/boldyrev/testing/protey /home/boldyrev/testing/protey /home/boldyrev/testing/protey/build /home/boldyrev/testing/protey/build /home/boldyrev/testing/protey/build/CMakeFiles/protey_testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/protey_testing.dir/depend
