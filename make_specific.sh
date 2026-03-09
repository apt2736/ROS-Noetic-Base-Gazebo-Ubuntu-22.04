#!/bin/bash

# Check if a package name was given

if [ -z "$1" ]; then
echo "Usage: $0 <package_name>"
exit 1
fi

PKG=$1

echo "Installing dependencies for workspace..."
rosdep install --from-paths src --ignore-src --rosdistro noetic -y

echo "Building package: $PKG"
./src/catkin/bin/catkin_make_isolated --install --pkg $PKG

echo "Sourcing workspace..."
source install_isolated/setup.bash

echo "Done building $PKG"
