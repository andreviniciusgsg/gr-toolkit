# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andre.gomes/gnuradio/gr-toolkit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andre.gomes/gnuradio/gr-toolkit/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-toolkit.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-toolkit.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-toolkit.dir/flags.make

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o: lib/CMakeFiles/test-toolkit.dir/flags.make
lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o: ../lib/test_toolkit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andre.gomes/gnuradio/gr-toolkit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-toolkit.dir/test_toolkit.cc.o -c /Users/andre.gomes/gnuradio/gr-toolkit/lib/test_toolkit.cc

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-toolkit.dir/test_toolkit.cc.i"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andre.gomes/gnuradio/gr-toolkit/lib/test_toolkit.cc > CMakeFiles/test-toolkit.dir/test_toolkit.cc.i

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-toolkit.dir/test_toolkit.cc.s"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andre.gomes/gnuradio/gr-toolkit/lib/test_toolkit.cc -o CMakeFiles/test-toolkit.dir/test_toolkit.cc.s

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.requires:

.PHONY : lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.requires

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.provides: lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-toolkit.dir/build.make lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.provides

lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.provides.build: lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o


lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o: lib/CMakeFiles/test-toolkit.dir/flags.make
lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o: ../lib/qa_toolkit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andre.gomes/gnuradio/gr-toolkit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o -c /Users/andre.gomes/gnuradio/gr-toolkit/lib/qa_toolkit.cc

lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-toolkit.dir/qa_toolkit.cc.i"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andre.gomes/gnuradio/gr-toolkit/lib/qa_toolkit.cc > CMakeFiles/test-toolkit.dir/qa_toolkit.cc.i

lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-toolkit.dir/qa_toolkit.cc.s"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andre.gomes/gnuradio/gr-toolkit/lib/qa_toolkit.cc -o CMakeFiles/test-toolkit.dir/qa_toolkit.cc.s

lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.requires:

.PHONY : lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.requires

lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.provides: lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-toolkit.dir/build.make lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.provides

lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.provides.build: lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o


# Object files for target test-toolkit
test__toolkit_OBJECTS = \
"CMakeFiles/test-toolkit.dir/test_toolkit.cc.o" \
"CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o"

# External object files for target test-toolkit
test__toolkit_EXTERNAL_OBJECTS =

lib/test-toolkit: lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o
lib/test-toolkit: lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o
lib/test-toolkit: lib/CMakeFiles/test-toolkit.dir/build.make
lib/test-toolkit: /opt/local/lib/libgnuradio-runtime.dylib
lib/test-toolkit: /opt/local/lib/libgnuradio-pmt.dylib
lib/test-toolkit: /opt/local/lib/libboost_filesystem-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_system-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_thread-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_chrono-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_date_time-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_atomic-mt.dylib
lib/test-toolkit: /opt/local/lib/libcppunit.dylib
lib/test-toolkit: lib/libgnuradio-toolkit.dylib
lib/test-toolkit: /opt/local/lib/libgnuradio-runtime.dylib
lib/test-toolkit: /opt/local/lib/libgnuradio-pmt.dylib
lib/test-toolkit: /opt/local/lib/libboost_filesystem-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_system-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_thread-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_chrono-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_date_time-mt.dylib
lib/test-toolkit: /opt/local/lib/libboost_atomic-mt.dylib
lib/test-toolkit: lib/CMakeFiles/test-toolkit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/andre.gomes/gnuradio/gr-toolkit/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test-toolkit"
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-toolkit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-toolkit.dir/build: lib/test-toolkit

.PHONY : lib/CMakeFiles/test-toolkit.dir/build

lib/CMakeFiles/test-toolkit.dir/requires: lib/CMakeFiles/test-toolkit.dir/test_toolkit.cc.o.requires
lib/CMakeFiles/test-toolkit.dir/requires: lib/CMakeFiles/test-toolkit.dir/qa_toolkit.cc.o.requires

.PHONY : lib/CMakeFiles/test-toolkit.dir/requires

lib/CMakeFiles/test-toolkit.dir/clean:
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-toolkit.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-toolkit.dir/clean

lib/CMakeFiles/test-toolkit.dir/depend:
	cd /Users/andre.gomes/gnuradio/gr-toolkit/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andre.gomes/gnuradio/gr-toolkit /Users/andre.gomes/gnuradio/gr-toolkit/lib /Users/andre.gomes/gnuradio/gr-toolkit/build /Users/andre.gomes/gnuradio/gr-toolkit/build/lib /Users/andre.gomes/gnuradio/gr-toolkit/build/lib/CMakeFiles/test-toolkit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-toolkit.dir/depend

