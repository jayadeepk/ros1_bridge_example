mkdir src
cd src
git clone -b foxy --single-branch https://github.com/ros2/ros1_bridge.git
cd ..
source /opt/ros/noetic/setup.bash
source /opt/ros/foxy/setup.bash
source ../ros1_msgs_ws/install_isolated/setup.bash
source ../ros2_msgs_ws/install/local_setup.bash
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure
