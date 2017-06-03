#!/bin/bash
sudo apt update


#install mjpg_streamer
sudo apt install -y cmake libjpeg8-dev
mkdir Software
cd Software
sudo wget https://github.com/jacksonliam/mjpg-streamer/archive/master.zip
unzip master.zip
rm -f master.zip
cd mjpg-streamer-master/mjpg-streamer-experimental
make
sudo make install
