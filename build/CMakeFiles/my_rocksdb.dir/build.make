# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pr2admin/work/rocksdb_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pr2admin/work/rocksdb_example/build

# Include any dependencies generated for this target.
include CMakeFiles/my_rocksdb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_rocksdb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_rocksdb.dir/flags.make

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o: CMakeFiles/my_rocksdb.dir/flags.make
CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o: ../src/my_rocksdb.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pr2admin/work/rocksdb_example/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o -c /home/pr2admin/work/rocksdb_example/src/my_rocksdb.cpp

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pr2admin/work/rocksdb_example/src/my_rocksdb.cpp > CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.i

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pr2admin/work/rocksdb_example/src/my_rocksdb.cpp -o CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.s

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.requires:
.PHONY : CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.requires

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.provides: CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.requires
	$(MAKE) -f CMakeFiles/my_rocksdb.dir/build.make CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.provides.build
.PHONY : CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.provides

CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.provides.build: CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o

# Object files for target my_rocksdb
my_rocksdb_OBJECTS = \
"CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o"

# External object files for target my_rocksdb
my_rocksdb_EXTERNAL_OBJECTS =

../bin/my_rocksdb: CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o
../bin/my_rocksdb: /usr/local/lib/librocksdb.a
../bin/my_rocksdb: CMakeFiles/my_rocksdb.dir/build.make
../bin/my_rocksdb: CMakeFiles/my_rocksdb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/my_rocksdb"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_rocksdb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_rocksdb.dir/build: ../bin/my_rocksdb
.PHONY : CMakeFiles/my_rocksdb.dir/build

CMakeFiles/my_rocksdb.dir/requires: CMakeFiles/my_rocksdb.dir/src/my_rocksdb.cpp.o.requires
.PHONY : CMakeFiles/my_rocksdb.dir/requires

CMakeFiles/my_rocksdb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_rocksdb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_rocksdb.dir/clean

CMakeFiles/my_rocksdb.dir/depend:
	cd /home/pr2admin/work/rocksdb_example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pr2admin/work/rocksdb_example /home/pr2admin/work/rocksdb_example /home/pr2admin/work/rocksdb_example/build /home/pr2admin/work/rocksdb_example/build /home/pr2admin/work/rocksdb_example/build/CMakeFiles/my_rocksdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_rocksdb.dir/depend

