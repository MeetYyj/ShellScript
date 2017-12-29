#禁用开源的Nouveau驱动
sudo cp blacklist-nouveau.conf /etc/modprobe.d/
sudo update-initramfs -u
#安装显卡驱动
sudo apt install nvidia-375
#!!!!!!!!!!!!!!!!!!!!!!
#Ctrl+Alt+F1切换到tty界面
#关闭X Server
sudo service lightdm stop
#安装依赖
sudo apt install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libgl1-mesa-glx libglu1-mesa libglu1-mesa-dev
#安装CUDA
sudo sh cuda_8.0.61_375.26_linux.run
# no for driver (never install openGL)
# 增加环境变量
export PATH=/usr/local/cuda-8.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64$LD_LIBRARY_PATH

