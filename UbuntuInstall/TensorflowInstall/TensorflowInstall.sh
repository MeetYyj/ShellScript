# Ubuntu 16.04
# install cuda
# install cudnn
# install tensorflow
sudo apt install python3-pip python3-dev
echo "index-url = http://pypi.douban.com/simple" >> $HOME/.pip/pipconf
pip3 install tensorflow-gpu

