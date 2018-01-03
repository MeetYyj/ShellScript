#!/bin/bash
cur_dir=$PWD
sudo apt update

#install vim
sudo apt install -y vim
sudo apt install -y git
#install mjpg_streamer
sudo apt install -y cmake libjpeg8-dev
mkdir $HOME/Software
cd $HOME/Software
sudo wget https://github.com/jacksonliam/mjpg-streamer/archive/master.zip
unzip master.zip
rm -f master.zip
cd mjpg-streamer-master/mjpg-streamer-experimental
make
sudo make install
cd /etc/init.d
cp $PWD/wifirobot.sh .
sudo update-rc.d wifirobot.sh defaults 95

git clone https://github.com/MeetYyj/Robot306.git
