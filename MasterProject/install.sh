#!/bin/bash
cur_dir=$PWD
sudo apt update

#install vim
sudo apt install -y vim
sudo apt install -y git
sudo apt install -y ssh
sudo apt install -y openssh-server openssh-client
sudo apt install -y htop
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
sudo cp $cur_dir/wifirobot.sh .
sudo update-rc.d wifirobot.sh defaults 95

# install potocol buffers 3.5.0
# need almost 120 minutes
cd $HOME/Software
cp $cur_dir/protobuf-cpp-3.5.0.zip .
unzip protobuf-cpp-3.5.0.zip
cd protobuf-3.5.0
sudo apt -y install autoconf automake libtool curl make g++ unzip
./configure
make
make check
sudo make install
sudo ldconfig

# install boost lib
sudo apt -y install libboost-all-dev

cd $HOME
git clone https://github.com/MeetYyj/Robot306.git
cd Robot306
mkdir bin
cd bin
cmake ..
make
