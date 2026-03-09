echo "Installing dependencies for workspace..."
rosdep install --from-paths src --ignore-src --rosdistro noetic -y

echo "Building Whole Workspace"
./src/catkin/bin/catkin_make_isolated --install

echo "Sourcing workspace..."
source install_isolated/setup.bash

echo "Done Building ros_catkin_ws"
