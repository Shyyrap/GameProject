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
CMAKE_SOURCE_DIR = /home/angyr/GameProg/Games/SpaceInvaders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/angyr/GameProg/Games/SpaceInvaders

# Include any dependencies generated for this target.
include CMakeFiles/Space.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Space.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Space.dir/flags.make

CMakeFiles/Space.dir/source/Actor.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Actor.cpp.o: source/Actor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Space.dir/source/Actor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Actor.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Actor.cpp

CMakeFiles/Space.dir/source/Actor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Actor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Actor.cpp > CMakeFiles/Space.dir/source/Actor.cpp.i

CMakeFiles/Space.dir/source/Actor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Actor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Actor.cpp -o CMakeFiles/Space.dir/source/Actor.cpp.s

CMakeFiles/Space.dir/source/Actor.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Actor.cpp.o.requires

CMakeFiles/Space.dir/source/Actor.cpp.o.provides: CMakeFiles/Space.dir/source/Actor.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Actor.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Actor.cpp.o.provides

CMakeFiles/Space.dir/source/Actor.cpp.o.provides.build: CMakeFiles/Space.dir/source/Actor.cpp.o


CMakeFiles/Space.dir/source/ArtModel.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/ArtModel.cpp.o: source/ArtModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Space.dir/source/ArtModel.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/ArtModel.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/ArtModel.cpp

CMakeFiles/Space.dir/source/ArtModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/ArtModel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/ArtModel.cpp > CMakeFiles/Space.dir/source/ArtModel.cpp.i

CMakeFiles/Space.dir/source/ArtModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/ArtModel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/ArtModel.cpp -o CMakeFiles/Space.dir/source/ArtModel.cpp.s

CMakeFiles/Space.dir/source/ArtModel.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/ArtModel.cpp.o.requires

CMakeFiles/Space.dir/source/ArtModel.cpp.o.provides: CMakeFiles/Space.dir/source/ArtModel.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/ArtModel.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/ArtModel.cpp.o.provides

CMakeFiles/Space.dir/source/ArtModel.cpp.o.provides.build: CMakeFiles/Space.dir/source/ArtModel.cpp.o


CMakeFiles/Space.dir/source/Camera.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Camera.cpp.o: source/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Space.dir/source/Camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Camera.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Camera.cpp

CMakeFiles/Space.dir/source/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Camera.cpp > CMakeFiles/Space.dir/source/Camera.cpp.i

CMakeFiles/Space.dir/source/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Camera.cpp -o CMakeFiles/Space.dir/source/Camera.cpp.s

CMakeFiles/Space.dir/source/Camera.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Camera.cpp.o.requires

CMakeFiles/Space.dir/source/Camera.cpp.o.provides: CMakeFiles/Space.dir/source/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Camera.cpp.o.provides

CMakeFiles/Space.dir/source/Camera.cpp.o.provides.build: CMakeFiles/Space.dir/source/Camera.cpp.o


CMakeFiles/Space.dir/source/Component.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Component.cpp.o: source/Component.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Space.dir/source/Component.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Component.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Component.cpp

CMakeFiles/Space.dir/source/Component.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Component.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Component.cpp > CMakeFiles/Space.dir/source/Component.cpp.i

CMakeFiles/Space.dir/source/Component.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Component.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Component.cpp -o CMakeFiles/Space.dir/source/Component.cpp.s

CMakeFiles/Space.dir/source/Component.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Component.cpp.o.requires

CMakeFiles/Space.dir/source/Component.cpp.o.provides: CMakeFiles/Space.dir/source/Component.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Component.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Component.cpp.o.provides

CMakeFiles/Space.dir/source/Component.cpp.o.provides.build: CMakeFiles/Space.dir/source/Component.cpp.o


CMakeFiles/Space.dir/source/Display.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Display.cpp.o: source/Display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Space.dir/source/Display.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Display.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Display.cpp

CMakeFiles/Space.dir/source/Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Display.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Display.cpp > CMakeFiles/Space.dir/source/Display.cpp.i

CMakeFiles/Space.dir/source/Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Display.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Display.cpp -o CMakeFiles/Space.dir/source/Display.cpp.s

CMakeFiles/Space.dir/source/Display.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Display.cpp.o.requires

CMakeFiles/Space.dir/source/Display.cpp.o.provides: CMakeFiles/Space.dir/source/Display.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Display.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Display.cpp.o.provides

CMakeFiles/Space.dir/source/Display.cpp.o.provides.build: CMakeFiles/Space.dir/source/Display.cpp.o


CMakeFiles/Space.dir/source/EasyMesh.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/EasyMesh.cpp.o: source/EasyMesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Space.dir/source/EasyMesh.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/EasyMesh.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/EasyMesh.cpp

CMakeFiles/Space.dir/source/EasyMesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/EasyMesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/EasyMesh.cpp > CMakeFiles/Space.dir/source/EasyMesh.cpp.i

CMakeFiles/Space.dir/source/EasyMesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/EasyMesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/EasyMesh.cpp -o CMakeFiles/Space.dir/source/EasyMesh.cpp.s

CMakeFiles/Space.dir/source/EasyMesh.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/EasyMesh.cpp.o.requires

CMakeFiles/Space.dir/source/EasyMesh.cpp.o.provides: CMakeFiles/Space.dir/source/EasyMesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/EasyMesh.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/EasyMesh.cpp.o.provides

CMakeFiles/Space.dir/source/EasyMesh.cpp.o.provides.build: CMakeFiles/Space.dir/source/EasyMesh.cpp.o


CMakeFiles/Space.dir/source/Game.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Game.cpp.o: source/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Space.dir/source/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Game.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Game.cpp

CMakeFiles/Space.dir/source/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Game.cpp > CMakeFiles/Space.dir/source/Game.cpp.i

CMakeFiles/Space.dir/source/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Game.cpp -o CMakeFiles/Space.dir/source/Game.cpp.s

CMakeFiles/Space.dir/source/Game.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Game.cpp.o.requires

CMakeFiles/Space.dir/source/Game.cpp.o.provides: CMakeFiles/Space.dir/source/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Game.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Game.cpp.o.provides

CMakeFiles/Space.dir/source/Game.cpp.o.provides.build: CMakeFiles/Space.dir/source/Game.cpp.o


CMakeFiles/Space.dir/source/Math.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Math.cpp.o: source/Math.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Space.dir/source/Math.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Math.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Math.cpp

CMakeFiles/Space.dir/source/Math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Math.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Math.cpp > CMakeFiles/Space.dir/source/Math.cpp.i

CMakeFiles/Space.dir/source/Math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Math.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Math.cpp -o CMakeFiles/Space.dir/source/Math.cpp.s

CMakeFiles/Space.dir/source/Math.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Math.cpp.o.requires

CMakeFiles/Space.dir/source/Math.cpp.o.provides: CMakeFiles/Space.dir/source/Math.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Math.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Math.cpp.o.provides

CMakeFiles/Space.dir/source/Math.cpp.o.provides.build: CMakeFiles/Space.dir/source/Math.cpp.o


CMakeFiles/Space.dir/source/Mesh.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Mesh.cpp.o: source/Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Space.dir/source/Mesh.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Mesh.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Mesh.cpp

CMakeFiles/Space.dir/source/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Mesh.cpp > CMakeFiles/Space.dir/source/Mesh.cpp.i

CMakeFiles/Space.dir/source/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Mesh.cpp -o CMakeFiles/Space.dir/source/Mesh.cpp.s

CMakeFiles/Space.dir/source/Mesh.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Mesh.cpp.o.requires

CMakeFiles/Space.dir/source/Mesh.cpp.o.provides: CMakeFiles/Space.dir/source/Mesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Mesh.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Mesh.cpp.o.provides

CMakeFiles/Space.dir/source/Mesh.cpp.o.provides.build: CMakeFiles/Space.dir/source/Mesh.cpp.o


CMakeFiles/Space.dir/source/MeshComponent.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/MeshComponent.cpp.o: source/MeshComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Space.dir/source/MeshComponent.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/MeshComponent.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/MeshComponent.cpp

CMakeFiles/Space.dir/source/MeshComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/MeshComponent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/MeshComponent.cpp > CMakeFiles/Space.dir/source/MeshComponent.cpp.i

CMakeFiles/Space.dir/source/MeshComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/MeshComponent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/MeshComponent.cpp -o CMakeFiles/Space.dir/source/MeshComponent.cpp.s

CMakeFiles/Space.dir/source/MeshComponent.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/MeshComponent.cpp.o.requires

CMakeFiles/Space.dir/source/MeshComponent.cpp.o.provides: CMakeFiles/Space.dir/source/MeshComponent.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/MeshComponent.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/MeshComponent.cpp.o.provides

CMakeFiles/Space.dir/source/MeshComponent.cpp.o.provides.build: CMakeFiles/Space.dir/source/MeshComponent.cpp.o


CMakeFiles/Space.dir/source/Renderer.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Renderer.cpp.o: source/Renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Space.dir/source/Renderer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Renderer.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Renderer.cpp

CMakeFiles/Space.dir/source/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Renderer.cpp > CMakeFiles/Space.dir/source/Renderer.cpp.i

CMakeFiles/Space.dir/source/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Renderer.cpp -o CMakeFiles/Space.dir/source/Renderer.cpp.s

CMakeFiles/Space.dir/source/Renderer.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Renderer.cpp.o.requires

CMakeFiles/Space.dir/source/Renderer.cpp.o.provides: CMakeFiles/Space.dir/source/Renderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Renderer.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Renderer.cpp.o.provides

CMakeFiles/Space.dir/source/Renderer.cpp.o.provides.build: CMakeFiles/Space.dir/source/Renderer.cpp.o


CMakeFiles/Space.dir/source/Shader.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Shader.cpp.o: source/Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Space.dir/source/Shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Shader.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Shader.cpp

CMakeFiles/Space.dir/source/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Shader.cpp > CMakeFiles/Space.dir/source/Shader.cpp.i

CMakeFiles/Space.dir/source/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Shader.cpp -o CMakeFiles/Space.dir/source/Shader.cpp.s

CMakeFiles/Space.dir/source/Shader.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Shader.cpp.o.requires

CMakeFiles/Space.dir/source/Shader.cpp.o.provides: CMakeFiles/Space.dir/source/Shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Shader.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Shader.cpp.o.provides

CMakeFiles/Space.dir/source/Shader.cpp.o.provides.build: CMakeFiles/Space.dir/source/Shader.cpp.o


CMakeFiles/Space.dir/source/SpriteComponent.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/SpriteComponent.cpp.o: source/SpriteComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Space.dir/source/SpriteComponent.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/SpriteComponent.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/SpriteComponent.cpp

CMakeFiles/Space.dir/source/SpriteComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/SpriteComponent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/SpriteComponent.cpp > CMakeFiles/Space.dir/source/SpriteComponent.cpp.i

CMakeFiles/Space.dir/source/SpriteComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/SpriteComponent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/SpriteComponent.cpp -o CMakeFiles/Space.dir/source/SpriteComponent.cpp.s

CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.requires

CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.provides: CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.provides

CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.provides.build: CMakeFiles/Space.dir/source/SpriteComponent.cpp.o


CMakeFiles/Space.dir/source/Texture.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Texture.cpp.o: source/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Space.dir/source/Texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Texture.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Texture.cpp

CMakeFiles/Space.dir/source/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Texture.cpp > CMakeFiles/Space.dir/source/Texture.cpp.i

CMakeFiles/Space.dir/source/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Texture.cpp -o CMakeFiles/Space.dir/source/Texture.cpp.s

CMakeFiles/Space.dir/source/Texture.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Texture.cpp.o.requires

CMakeFiles/Space.dir/source/Texture.cpp.o.provides: CMakeFiles/Space.dir/source/Texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Texture.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Texture.cpp.o.provides

CMakeFiles/Space.dir/source/Texture.cpp.o.provides.build: CMakeFiles/Space.dir/source/Texture.cpp.o


CMakeFiles/Space.dir/source/Transform.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Transform.cpp.o: source/Transform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Space.dir/source/Transform.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Transform.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Transform.cpp

CMakeFiles/Space.dir/source/Transform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Transform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Transform.cpp > CMakeFiles/Space.dir/source/Transform.cpp.i

CMakeFiles/Space.dir/source/Transform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Transform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Transform.cpp -o CMakeFiles/Space.dir/source/Transform.cpp.s

CMakeFiles/Space.dir/source/Transform.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Transform.cpp.o.requires

CMakeFiles/Space.dir/source/Transform.cpp.o.provides: CMakeFiles/Space.dir/source/Transform.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Transform.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Transform.cpp.o.provides

CMakeFiles/Space.dir/source/Transform.cpp.o.provides.build: CMakeFiles/Space.dir/source/Transform.cpp.o


CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o: source/TreeDGameObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/TreeDGameObject.cpp

CMakeFiles/Space.dir/source/TreeDGameObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/TreeDGameObject.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/TreeDGameObject.cpp > CMakeFiles/Space.dir/source/TreeDGameObject.cpp.i

CMakeFiles/Space.dir/source/TreeDGameObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/TreeDGameObject.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/TreeDGameObject.cpp -o CMakeFiles/Space.dir/source/TreeDGameObject.cpp.s

CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.requires

CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.provides: CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.provides

CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.provides.build: CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o


CMakeFiles/Space.dir/source/Util.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/Util.cpp.o: source/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Space.dir/source/Util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/Util.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/Util.cpp

CMakeFiles/Space.dir/source/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/Util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/Util.cpp > CMakeFiles/Space.dir/source/Util.cpp.i

CMakeFiles/Space.dir/source/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/Util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/Util.cpp -o CMakeFiles/Space.dir/source/Util.cpp.s

CMakeFiles/Space.dir/source/Util.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/Util.cpp.o.requires

CMakeFiles/Space.dir/source/Util.cpp.o.provides: CMakeFiles/Space.dir/source/Util.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/Util.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/Util.cpp.o.provides

CMakeFiles/Space.dir/source/Util.cpp.o.provides.build: CMakeFiles/Space.dir/source/Util.cpp.o


CMakeFiles/Space.dir/source/VertexArray.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/VertexArray.cpp.o: source/VertexArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/Space.dir/source/VertexArray.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/VertexArray.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/VertexArray.cpp

CMakeFiles/Space.dir/source/VertexArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/VertexArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/VertexArray.cpp > CMakeFiles/Space.dir/source/VertexArray.cpp.i

CMakeFiles/Space.dir/source/VertexArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/VertexArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/VertexArray.cpp -o CMakeFiles/Space.dir/source/VertexArray.cpp.s

CMakeFiles/Space.dir/source/VertexArray.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/VertexArray.cpp.o.requires

CMakeFiles/Space.dir/source/VertexArray.cpp.o.provides: CMakeFiles/Space.dir/source/VertexArray.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/VertexArray.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/VertexArray.cpp.o.provides

CMakeFiles/Space.dir/source/VertexArray.cpp.o.provides.build: CMakeFiles/Space.dir/source/VertexArray.cpp.o


CMakeFiles/Space.dir/source/main.cpp.o: CMakeFiles/Space.dir/flags.make
CMakeFiles/Space.dir/source/main.cpp.o: source/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/Space.dir/source/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Space.dir/source/main.cpp.o -c /home/angyr/GameProg/Games/SpaceInvaders/source/main.cpp

CMakeFiles/Space.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Space.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angyr/GameProg/Games/SpaceInvaders/source/main.cpp > CMakeFiles/Space.dir/source/main.cpp.i

CMakeFiles/Space.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Space.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angyr/GameProg/Games/SpaceInvaders/source/main.cpp -o CMakeFiles/Space.dir/source/main.cpp.s

CMakeFiles/Space.dir/source/main.cpp.o.requires:

.PHONY : CMakeFiles/Space.dir/source/main.cpp.o.requires

CMakeFiles/Space.dir/source/main.cpp.o.provides: CMakeFiles/Space.dir/source/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Space.dir/build.make CMakeFiles/Space.dir/source/main.cpp.o.provides.build
.PHONY : CMakeFiles/Space.dir/source/main.cpp.o.provides

CMakeFiles/Space.dir/source/main.cpp.o.provides.build: CMakeFiles/Space.dir/source/main.cpp.o


# Object files for target Space
Space_OBJECTS = \
"CMakeFiles/Space.dir/source/Actor.cpp.o" \
"CMakeFiles/Space.dir/source/ArtModel.cpp.o" \
"CMakeFiles/Space.dir/source/Camera.cpp.o" \
"CMakeFiles/Space.dir/source/Component.cpp.o" \
"CMakeFiles/Space.dir/source/Display.cpp.o" \
"CMakeFiles/Space.dir/source/EasyMesh.cpp.o" \
"CMakeFiles/Space.dir/source/Game.cpp.o" \
"CMakeFiles/Space.dir/source/Math.cpp.o" \
"CMakeFiles/Space.dir/source/Mesh.cpp.o" \
"CMakeFiles/Space.dir/source/MeshComponent.cpp.o" \
"CMakeFiles/Space.dir/source/Renderer.cpp.o" \
"CMakeFiles/Space.dir/source/Shader.cpp.o" \
"CMakeFiles/Space.dir/source/SpriteComponent.cpp.o" \
"CMakeFiles/Space.dir/source/Texture.cpp.o" \
"CMakeFiles/Space.dir/source/Transform.cpp.o" \
"CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o" \
"CMakeFiles/Space.dir/source/Util.cpp.o" \
"CMakeFiles/Space.dir/source/VertexArray.cpp.o" \
"CMakeFiles/Space.dir/source/main.cpp.o"

# External object files for target Space
Space_EXTERNAL_OBJECTS =

Space: CMakeFiles/Space.dir/source/Actor.cpp.o
Space: CMakeFiles/Space.dir/source/ArtModel.cpp.o
Space: CMakeFiles/Space.dir/source/Camera.cpp.o
Space: CMakeFiles/Space.dir/source/Component.cpp.o
Space: CMakeFiles/Space.dir/source/Display.cpp.o
Space: CMakeFiles/Space.dir/source/EasyMesh.cpp.o
Space: CMakeFiles/Space.dir/source/Game.cpp.o
Space: CMakeFiles/Space.dir/source/Math.cpp.o
Space: CMakeFiles/Space.dir/source/Mesh.cpp.o
Space: CMakeFiles/Space.dir/source/MeshComponent.cpp.o
Space: CMakeFiles/Space.dir/source/Renderer.cpp.o
Space: CMakeFiles/Space.dir/source/Shader.cpp.o
Space: CMakeFiles/Space.dir/source/SpriteComponent.cpp.o
Space: CMakeFiles/Space.dir/source/Texture.cpp.o
Space: CMakeFiles/Space.dir/source/Transform.cpp.o
Space: CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o
Space: CMakeFiles/Space.dir/source/Util.cpp.o
Space: CMakeFiles/Space.dir/source/VertexArray.cpp.o
Space: CMakeFiles/Space.dir/source/main.cpp.o
Space: CMakeFiles/Space.dir/build.make
Space: /usr/local/lib/libGLEW.so
Space: /usr/lib/x86_64-linux-gnu/libGL.so
Space: /usr/lib/x86_64-linux-gnu/libGLU.so
Space: /usr/local/lib/libGLEW.so
Space: /usr/lib/x86_64-linux-gnu/libGL.so
Space: /usr/lib/x86_64-linux-gnu/libGLU.so
Space: soil-master/build/libsoil.a
Space: CMakeFiles/Space.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable Space"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Space.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Space.dir/build: Space

.PHONY : CMakeFiles/Space.dir/build

CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Actor.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/ArtModel.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Camera.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Component.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Display.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/EasyMesh.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Game.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Math.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Mesh.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/MeshComponent.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Renderer.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Shader.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/SpriteComponent.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Texture.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Transform.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/TreeDGameObject.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/Util.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/VertexArray.cpp.o.requires
CMakeFiles/Space.dir/requires: CMakeFiles/Space.dir/source/main.cpp.o.requires

.PHONY : CMakeFiles/Space.dir/requires

CMakeFiles/Space.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Space.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Space.dir/clean

CMakeFiles/Space.dir/depend:
	cd /home/angyr/GameProg/Games/SpaceInvaders && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/angyr/GameProg/Games/SpaceInvaders /home/angyr/GameProg/Games/SpaceInvaders /home/angyr/GameProg/Games/SpaceInvaders /home/angyr/GameProg/Games/SpaceInvaders /home/angyr/GameProg/Games/SpaceInvaders/CMakeFiles/Space.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Space.dir/depend

