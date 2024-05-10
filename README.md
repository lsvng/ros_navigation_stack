**ros_navigation_stack**
====
The [ROS Navigation Stack](https://github.com/ros-planning/navigation) is a library used for navigating mobile robots in dynamic environments. It relies on an odometry source, Lidar data (in either 2D or 3D), and a map to enable autonomous navigation. While it can function without a map, the effectiveness of the global planner is compromised in such cases.

**About**
====
This repository demonstrates the usage of a ROS package that employs a [TEB Local Planner](https://github.com/rst-tu-dortmund/teb_local_planner) to construct navigation plans and avoid obstacles encountered along the robot's path. Additionally, a [URDF](https://github.com/ros/urdf) is utilized to represent the robot model accurately, enabling the publication of transformations for peripheral components (such as wheels and sensors) to [tf2](http://wiki.ros.org/tf2).

To execute these plans, [move_base](http://wiki.ros.org/move_base) is used to direct the robot along the trajectory determined by the local planner, with users interfacing through tools like [rviz](https://github.com/ros-visualization/rviz) or custom code.

**Install Relevant ROS Packages**
====

```
$ sudo apt update && sudo apt install -y \
    ros-<ros-distribution>-navigation \
    ros-<ros-distribution>-teb-local-planner \
    ros-<ros-distribution>-xacro \
    ros-<ros-distribution>-gazebo-ros \
    ros-<ros-distribution>-joint-state-publisher \
    ros-<ros-distribution>-robot-state-publisher
```

**Usage**
====

1. Build the catkin workspace
    ```
    catkin_make
    ```

2. Launch the program
    ```
    roslaunch ros_navigation_stack main.launch
    ```
