#!/bin/bash
# Run this after running build_all.sh

cd "$(dirname "$0")/bridge_ws"
source /opt/ros/noetic/setup.bash
source /opt/ros/foxy/setup.bash
source install/local_setup.sh

ros2 run ros1_bridge dynamic_bridge --print-pairs
