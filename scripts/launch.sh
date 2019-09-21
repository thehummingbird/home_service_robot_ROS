#!/bin/sh
xterm  -e  " cd /home/workspace/home_service; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/my_world.world" & 
sleep 5
#xterm  -e  " cd /home/workspace/home_service; source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" & 
xterm  -e  " cd /home/workspace/home_service; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/myMap.yaml" & 
sleep 5
xterm  -e  " cd /home/workspace/home_service; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" & 
sleep 5
xterm  -e  " cd /home/workspace/home_service; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch" & 
