#!/bin/bash
sudo apt update

#install vim
sudo apt install -y vim

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
cp $HOME/wifirobot.sh .
sudo update-rc.d wifirobot.sh defaults 95
