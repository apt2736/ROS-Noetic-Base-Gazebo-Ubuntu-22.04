unset ROS_DISTRO
unset AMENT_PREFIX_PATH
unset COLCON_PREFIX_PATH
unset CMAKE_PREFIX_PATH
unset LD_LIBRARY_PATH
unset PYTHONPATH
unset ROS_VERSION
unset ROS_PYTHON_VERSION
unset ROS_PACKAGE_PATH

sudo apt update sudo apt install -y \ build-essential cmake git wget curl \ python3 python3-pip python3-rosdep python3-rosinstall-generator \ python3-vcstool python3-wstool python3-catkin-tools \ libeigen3-dev libboost-all-dev \ libtinyxml2-dev libconsole-bridge-dev \ liburdfdom-dev liburdfdom-headers-dev \ liborocos-kdl-dev \ gazebo libgazebo-dev

if [ ! -f /etc/ros/rosdep/sources.list.d/20-default.list ]; then 
  sudo rosdep init 
fi
rosdep update

cd src

if [ ! -f .rosinstall ]; then 
  wstool init . 
fi

wstool merge ../urdf.rosinstall 
wstool update

cd ..

rosdep install --from-paths src --ignore-src --rosdistro noetic -y

./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release


