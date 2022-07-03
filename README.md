# Example setup for ros1_bridge with custom messages

This repository provides an example setup for creating custom message types for ROS 1 and ROS 2 and building a network bridge which enables the exchange of messages between ROS 1 and ROS 2 using [ros1_bridge](https://github.com/ros2/ros1_bridge/).

The directory layout looks like:
```
.
├─ ros1_msgs_ws
│  └─ src
│     └─ ros1_test
│        └─ msg
│           └─ CustomMessage.msg
│           └─ CustomMessage2.msg
├─ ros2_msgs_ws
│  └─ src
│     └─ ros2_test
│        ├─ msg
│        │  └─ CustomMessage.msg
│        │  └─ CustomMessage2.msg
│        └─ ros1_mapping_rules.yaml
└─ bridge_ws
   └─ src
      └─ ros1_bridge
```

## Prerequisites

Install ROS 1 Noetic and ROS 2 Foxy in a supported linux system (Ubuntu 20.04 in my case). Alternatively, if you have docker installed, you can use [osrf/ros:foxy-ros1-bridge](https://hub.docker.com/layers/ros/osrf/ros/foxy-ros1-bridge/images/sha256-6eef6a0f2db151d8eba7233643fe468e74b1afa14b5ee01d5cfbc3db0d93a181) image from Docker Hub.

## Build

Run `./build_all.sh` to build the three workspaces as mentioned in the [ros1_bridge documentation](https://github.com/ros2/ros1_bridge/blob/foxy/doc/index.rst#example-workspace-setup).

## Print pairs

Run `./print_pairs.sh | grep Custom` to verify that the custom message types were recognized by the bridge.
