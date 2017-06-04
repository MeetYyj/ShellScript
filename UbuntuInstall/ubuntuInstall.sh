#!/bin/bash
#change /etc/apt/sources.list
#---------------------------------
#cp -f sources.list /etc/apt/

#intall some package
#git vim
#sudo apt install git
#sudo apt install vim
#---------------------------------

#install shadowsocks-qt5
read -p "Do you want to install shadowsocks-qt5?(y/n)" choice
case $choice in
  y|Y|yes|Yes|YES)
  echo "Start installing shadowsocks-qt5:"
  sudo add-apt-repository ppa:hzwhuang/ss-qt5
  sudo apt-get update
  sudo apt install shadowsocks-qt5
  echo "export http_proxy=http://127.0.0.1:1080" >> $HOME/.bashrc
  echo "export https_proxy=\$http_proxy" >> $HOME/.bashrc
  ;;
  *)
  echo "shadowsocks-qt5 will NOT be installed"
  ;;
esac
#install chrome
#cd $HOME/Downloads
#wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
#sudo dpkg -i google-chrome-stable*
#sudo apt -f install

#dowland switchyOmega
#wget "https://github.com/FelisCatus/SwitchyOmega/releases/download/v2.4.6/SwitchyOmega.crx"
#wget "https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList.bak"

