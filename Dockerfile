FROM arm32v7/ros:melodic-ros-core-bionic
COPY qemu-arm-static /usr/bin

# Install navigation stack.
RUN apt update && apt install -y \
    g++ \
    ros-melodic-navigation \
    ros-melodic-teb-local-planner \
    ros-melodic-xacro \
    ros-melodic-gazebo-ros \
    ros-melodic-joint-state-publisher \
    ros-melodic-robot-state-publisher
RUN rm -rf /var/lib/apt/lists/*

# Configure ROS workspace.
COPY . ./root/catkin_ws/src/ros_navigation_stack
WORKDIR /root/catkin_ws

# Configuring docker container workspace.
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
RUN ["/bin/bash", "-c", "source /opt/ros/${ROS_DISTRO}/setup.bash && catkin_make install -DCMAKE_INSTALL_PREFIX=/opt/ros/${ROS_DISTRO}"]

COPY entrypoint.sh /.
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
