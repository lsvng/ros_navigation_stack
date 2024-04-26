cmake_minimum_required(VERSION 3.2)
project(ros_navigation_stack)

find_package(catkin REQUIRED COMPONENTS
  move_base
  actionlib
  tf2_ros
  costmap_2d
  rotate_recovery
)

catkin_package(
 CATKIN_DEPENDS move_base tf2_ros
)

install(DIRECTORY launch/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
    PATTERN ".svn" EXCLUDE
)

install(DIRECTORY cfg/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/cfg
  PATTERN ".svn" EXCLUDE
)

install(DIRECTORY map/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/map
  PATTERN ".svn" EXCLUDE
)

install(DIRECTORY urdf/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/urdf
  PATTERN ".svn" EXCLUDE
)

install(DIRECTORY rviz/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/rviz
  PATTERN ".svn" EXCLUDE
)
