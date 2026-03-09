# ROS Noetic Base Gazebo Ubuntu 22.04

A source-built ROS Noetic installation with Gazebo simulation support for Ubuntu 22.04.

## Overview

This repository provides scripts and instructions for building ROS Noetic from source on Ubuntu 22.04. Since ROS Noetic officially targets Ubuntu 20.04, this setup enables running ROS Noetic natively on Ubuntu 22.04 systems.

## Prerequisites

- Ubuntu 22.04 LTS
- Python 3
- Git
- Build tools (gcc, g++, cmake)

## Features

- ROS Noetic built from source for Ubuntu 22.04
- Gazebo simulation environment
- ROS base installation
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
./setup_isolated.sh
./make_all.sh
```

### 4. Source the Environment

```bash
unset ROS_DISTRO AMENT_PREFIX_PATH COLCON_PREFIX_PATH CMAKE_PREFIX_PATH LD_LIBRARY_PATH PYTHONPATH ROS_VERSION ROS_PYTHON_VERSION ROS_PACKAGE_PATH && source {Your Clone Path}/ROS-Noetic-Base-Gazebo-Ubuntu-22.04/install_isolated/setup.bash
```

## Project Structure

```
.
├── setup_isolated.sh  # Setup script
├── make_all.sh        # Make All script
├── make_specific.sh   # Make Specific Packages script
├── README.md          # This file
└── src/               # Source files
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
