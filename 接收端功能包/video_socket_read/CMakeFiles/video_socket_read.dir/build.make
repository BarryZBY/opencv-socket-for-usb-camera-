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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read

# Include any dependencies generated for this target.
include CMakeFiles/video_socket_read.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/video_socket_read.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/video_socket_read.dir/flags.make

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o: CMakeFiles/video_socket_read.dir/flags.make
CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o: src/video_socket_read.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o -c /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/src/video_socket_read.cpp

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/src/video_socket_read.cpp > CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.i

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/src/video_socket_read.cpp -o CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.s

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.requires:

.PHONY : CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.requires

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.provides: CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.requires
	$(MAKE) -f CMakeFiles/video_socket_read.dir/build.make CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.provides.build
.PHONY : CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.provides

CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.provides.build: CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o


# Object files for target video_socket_read
video_socket_read_OBJECTS = \
"CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o"

# External object files for target video_socket_read
video_socket_read_EXTERNAL_OBJECTS =

devel/lib/video_socket_read/video_socket_read: CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o
devel/lib/video_socket_read/video_socket_read: CMakeFiles/video_socket_read.dir/build.make
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libcv_bridge.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libimage_transport.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libmessage_filters.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libclass_loader.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/libPocoFoundation.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libroslib.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/librospack.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libroscpp.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/librosconsole.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/librosconsole_log4cxx.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/librosconsole_backend_interface.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libxmlrpcpp.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libroscpp_serialization.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/librostime.so
devel/lib/video_socket_read/video_socket_read: /opt/ros/melodic/lib/libcpp_common.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/video_socket_read/video_socket_read: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_dnn.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_ml.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_objdetect.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_shape.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_stitching.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_superres.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_videostab.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_viz.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_calib3d.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_features2d.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_flann.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_highgui.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_photo.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_video.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_videoio.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_imgcodecs.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_imgproc.so.3.3.1
devel/lib/video_socket_read/video_socket_read: /usr/local/lib/libopencv_core.so.3.3.1
devel/lib/video_socket_read/video_socket_read: CMakeFiles/video_socket_read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/video_socket_read/video_socket_read"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/video_socket_read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/video_socket_read.dir/build: devel/lib/video_socket_read/video_socket_read

.PHONY : CMakeFiles/video_socket_read.dir/build

CMakeFiles/video_socket_read.dir/requires: CMakeFiles/video_socket_read.dir/src/video_socket_read.cpp.o.requires

.PHONY : CMakeFiles/video_socket_read.dir/requires

CMakeFiles/video_socket_read.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/video_socket_read.dir/cmake_clean.cmake
.PHONY : CMakeFiles/video_socket_read.dir/clean

CMakeFiles/video_socket_read.dir/depend:
	cd /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read /home/byzhang1804/Documents/Video-network-transmission-by-socket-master/camara/接收端功能包/video_socket_read/CMakeFiles/video_socket_read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/video_socket_read.dir/depend

