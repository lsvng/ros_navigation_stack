#!/bin/bash

# Subscriber
# 1) move_base_simple/goal

# Publisher
# 1) cmd_vel

docker run -it --rm --network host \
        --name ros_navigation_stack \
        -e ROS_MASTER_URI=http://localhost:11311 -e ROS_IP=10.11.0.19 \
        10.11.0.11:5050/robotics/rover/navigation-stack/ros_navigation_stack:arm32v7 \
        roslaunch --wait ros_navigation_stack main.launch
