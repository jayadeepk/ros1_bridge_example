#!/bin/bash
# Dependencies: ROS1 Noetic and ROS2 Foxy

cd "$(dirname "$0")/ros1_msgs_ws"
bash build.sh

cd ../ros2_msgs_ws
bash build.sh

cd ../bridge_ws
bash clone_and_build.sh
