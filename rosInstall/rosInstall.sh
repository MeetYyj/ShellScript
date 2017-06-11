#!/bin/bash
# setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# setup keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
# install
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
# initialize rosdep
sudo rosdep init
rosdep update
# environment setup
mysh=`echo "$SHELL" | awk -F '/' '{print $4}'`
if [ "$mysh" = "zsh" ]
then
  echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc
  source ~/.zshrc
elif [ "$mysh" = "bash" ]
then
  echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
  source ~/.bashrc
else
  echo "source failed"
fi
sudo apt -y install ros-kinetic-opencv3
