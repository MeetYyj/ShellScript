#!/bin/bash
# change /etc/apt/sources.list
sudo cp sources.list /etc/apt/
sudo apt -y update
sudo apt -y upgrade

# intall some package
# git vim
sudo apt -y install git
sudo apt -y install vim
sudo apt -y install clang
sudo apt -y install cmake

# install shadowsocks-qt5
#read -p "Do you want to install shadowsocks-qt5?(y/n)" choice_ssqt5
#case $choice_ssqt5 in
#  y|Y|yes|Yes|YES)
#  echo "Start installing shadowsocks-qt5:"
#  sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
#  sudo apt -y update
#  sudo apt -y install shadowsocks-qt5
#  echo "export http_proxy=http://127.0.0.1:1080" >> $HOME/.bashrc
#  echo "export https_proxy=\$http_proxy" >> $HOME/.bashrc
#  source $HOME/.bashrc
#  ;;
#  *)
#  echo "shadowsocks-qt5 will NOT be installed"
#  ;;
#esac


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

# install zeal
read -p "Do you want to install zeal?(y/n)" choice_zeal
case $choice_zeal in
  y|Y|yes|Yes|YES)
  echo "Start installing zeal:"
  sudo apt -y install zeal
  ;;
  *)
  echo "zeal will NOT be installed"
  ;;
esac

# install shutter
read -p "Do you want to install shutter?(y/n)" choice_shutter
case $choice_shutter in
  y|Y|yes|Yes|YES)
  echo "Start installing shutter:"
  sudo apt -y install shutter
  ;;
  *)
  echo "shutter will NOT be installed"
  ;;
esac



# install pyhton shadowsocks
read -p "Do you want to install shadowsocks pyhton?(y/n)" choice_sspython
case $choice_sspython in
  y|Y|yes|Yes|YES)
  echo "Start installing shadowsocks python:"
  sudo apt-get install python-pip
  sudo pip install --upgrade pip
  pip install git+https://github.com/shadowsocks/shadowsocks.git@master
  ;;
  *)
  echo "shadowsocks python will NOT be installed"
  ;;
esac



# install pyhton tmux&tmuxinator
read -p "Do you want to install tmux & tmuxinator?(y/n)" choice_tmux
case $choice_tmux in
  y|Y|yes|Yes|YES)
  echo "Start installing tmux & tmuxinator:"
  sudo apt install tmux
  sudo apt install ruby
  sudo gem install tmuxinator
  ;;
  *)
  echo "shadowsocks python will NOT be installed"
  ;;
esac

# install zsh
read -p "Do you want to install zsh?(y/n)" choice_zsh
case $choice_zsh in
  y|Y|yes|Yes|YES)
  echo "Start installing zsh:"
  sudo apt -y install zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  echo "export http_proxy=http://127.0.0.1:1080" >> $HOME/.zshrc
  echo "export https_proxy=\$http_proxy" >> $HOME/.zshrc
  ;;
  *)
  echo "zsh will NOT be installed"
  ;;
esac

# install zeal
  # copy dotfile from yyj
  read -p "Do you want to copy yyj's dotfile?(y/n)" choice_dotfile
  case $choice_dotfile in
    y|Y|yes|Yes|YES)
    echo "git clone from yyj's dotfile"
    git clone https://github.com/MeetYyj/dotfile.git
    cp -r $HOME/dotfile $HOME
    ;;
    *)
    echo "yyj's dotfile will NOT be installed"
    ;;
 esac
