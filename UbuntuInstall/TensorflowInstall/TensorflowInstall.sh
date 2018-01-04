# Ubuntu 16.04
# install cuda
# install cudnn
# install tensorflow
sudo apt install python3-pip python3-dev
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> $HOME/.pip/pipconf
sudo pip3 install tensorflow-gpu

