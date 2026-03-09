# ROS Noetic Base Gazebo Ubuntu 22.04

A source-built ROS Noetic installation with Gazebo simulation support for Ubuntu 22.04.

## Overview

This repository provides scripts and instructions for building ROS Noetic from source on Ubuntu 22.04. Since ROS Noetic officially targets Ubuntu 20.04, this setup enables running ROS Noetic natively on Ubuntu 22.04 systems.

## Prerequisites

- Ubuntu 22.04 LTS
- Python 3
- Git
- Build tools (gcc, g++, cmake)
- Sufficient disk space (~10GB for full build)

## Features

- ROS Noetic built from source for Ubuntu 22.04
- Gazebo simulation environment
- Full ROS desktop installation
- Custom workspace setup
- All necessary dependencies included

## Installation

### 1. Install System Dependencies

```bash
sudo apt update
sudo apt install -y \
    build-essential \
    cmake \
    git \
    python3-pip \
    python3-rosdep \
    python3-rosinstall-generator \
    python3-wstool \
    python3-vcstool
```

### 2. Clone the Repository

```bash
git clone https://github.com/apt2736/ROS-Noetic-Base-Gazebo-Ubuntu-22.04.git
cd ROS-Noetic-Base-Gazebo-Ubuntu-22.04
```

### 3. Build ROS Noetic

```bash
# Run the installation script
./install.sh
```

Or follow manual build steps if provided in the repository.

### 4. Source the Environment

```bash
source /opt/ros/noetic/setup.bash
# Or add to ~/.bashrc for automatic sourcing
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
```

## Usage

### Creating a Workspace

```bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
source devel/setup.bash
```

### Running ROS

```bash
# Start the ROS master
roscore
```

### Launching Gazebo

```bash
# Launch empty Gazebo world
roslaunch gazebo_ros empty_world.launch

# Launch with a specific world
roslaunch gazebo_ros willowgarage_world.launch
```

### Testing the Installation

```bash
# Check ROS installation
rosversion -d

# List available packages
rospack list

# Run turtlesim example
rosrun turtlesim turtlesim_node
```

## Project Structure

```
.
├── install.sh         # Installation script
├── README.md          # This file
└── src/               # Source files and patches (if any)
```

## Building Custom Packages

```bash
cd ~/catkin_ws/src
# Clone or create your package
catkin_create_pkg my_package rospy roscpp std_msgs

cd ~/catkin_ws
catkin_make
source devel/setup.bash
```

## Troubleshooting

### Python Version Issues
If you encounter Python-related errors, ensure Python 3 is the default:
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
```

### Missing Dependencies
```bash
cd ~/catkin_ws
rosdep install --from-paths src --ignore-src -r -y
```

### Build Errors
Clean and rebuild:
```bash
cd ~/catkin_ws
catkin_make clean
catkin_make
```

### Gazebo Not Starting
```bash
# Check Gazebo installation
gazebo --version

# Reset Gazebo configuration
rm -rf ~/.gazebo
```

## Known Issues

- Some packages may require additional dependencies on Ubuntu 22.04
- Python 2 packages are not supported
- Check compatibility for specific ROS packages

## Contributing

Contributions are welcome! Please submit issues or pull requests for improvements.

## Resources

- [ROS Noetic Documentation](http://wiki.ros.org/noetic)
- [Gazebo Documentation](http://gazebosim.org/tutorials)
- [ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)

## License

Please check the repository for license information.

## Contact

Repository: https://github.com/apt2736/ROS-Noetic-Base-Gazebo-Ubuntu-22.04

