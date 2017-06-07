#!/bin/bash
# change /etc/apt/sources.list
cp -f sources.list /etc/apt/
sudo apt update
sudo apt upgrade

# intall some package
# git vim
sudo apt -y install git
sudo apt -y install vim

# install shadowsocks-qt5
read -p "Do you want to install shadowsocks-qt5?(y/n)" choice_ssqt5
case $choice_ssqt5 in
  y|Y|yes|Yes|YES)
  echo "Start installing shadowsocks-qt5:"
  sudo add-apt-repository ppa:hzwhuang/ss-qt5
  sudo apt-get update
  sudo apt -y install shadowsocks-qt5
  echo "export http_proxy=http://127.0.0.1:1080" >> $HOME/.bashrc
  echo "export https_proxy=\$http_proxy" >> $HOME/.bashrc
  source $HOME/.bashrc
  ;;
  *)
  echo "shadowsocks-qt5 will NOT be installed"
  ;;
esac


# install chrome
read -p "Do you want to install chrome?(y/n)" choice_chrome
case $choice_chrome in
  y|Y|yes|Yes|YES)
  echo "Start installing chrome:"
  cd $HOME/Downloads
  wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
  sudo dpkg -i google-chrome-stable*
  sudo apt -f install
  # dowland switchyOmega
  # wget "https://github.com/FelisCatus/SwitchyOmega/releases/download/v2.4.6/SwitchyOmega.crx"
  # wget "https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList.bak"
  ;;
  *)
  echo "chrome will NOT be installed"
  ;;
esac

# install sogoupinyin
read -p "Do you want to install sogoupinyin?(y/n)" choice_sogou
case $choice_sogou in
  y|Y|yes|Yes|YES)
  echo "Start installing sogoupinyin:"
  cd $HOME/Downloads
  wget "http://cdn2.ime.sogou.com/dl/index/1491565850/sogoupinyin_2.1.0.0086_amd64.deb?st=IA49qx39cM3QM0eU1GHaQA&e=1496571442&fn=sogoupinyin_2.1.0.0086_amd64.deb"
  sudo apt -y install fcitx
  sudo dpkg -i sogoupinyin*.deb
  sudo apt -f install
  ;;
  *)
  echo "sogoupinyin will NOT be installed"
  ;;
esac


# install zsh
read -p "Do you want to install zsh?(y/n)" choice_zsh
case $choice_zsh in
  y|Y|yes|Yes|YES)
  echo "Start installing zsh:"
  sudo apt -y install zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  ;;
  *)
  echo "zsh will NOT be installed"
  ;;
esac
