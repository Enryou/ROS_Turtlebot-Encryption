#!/usr/bin/env bash
# !/bin/bash
LOG_FILE=/home/usr/autostart/logs/log_autostart.txt
echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "#############################################" >> ${LOG_FILE}
echo "Running autostart.sh" >> ${LOG_FILE}
echo $(date) >> ${LOG_FILE}
echo "#############################################" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "Logs:" >> ${LOG_FILE}

set -e

{

source /opt/ros/kinetic/setup.bash
source /home/faolin/catkin_ws/devel/setup.bash

export ROS_WORKSPACE=/home/catkin_ws

export ROS_MASTER_URI=http://xxx.xxx.xxx.xx:11311/ ##e. g. Master
export ROS_IP=xxx.xxx.xxx.xx                       ##e. g. Own IP

sleep 8

} &>> ${LOG_FILE}

set -v

{

roscore &

sleep 10

roslaunch turtlebot_gazebo turtlebot_world.launch &

sleep 5

roslaunch turtlebot_gazebo amcl_demo.launch &

sleep 5

roslaunch turtlebot_rviz_launchers view_navigation.launch &

sleep 5

roslaunch turtlebot_teleop keyboard_teleop.launch

killall rosout roslaunch rosmaster gazebo

} &>> ${LOG_FILE}
