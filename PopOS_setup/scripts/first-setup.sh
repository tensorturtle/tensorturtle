#!/bin/bash
sudo apt update
sudo apt upgrade

# use this script to set up a fresh installation of Pop!_OS

# install korean
sudo apt install -y language-pack-gnome-ko

sudo apt install -y htop neovim atom timeshift openssh-server nodejs python3-pip vlc vlc-data ubuntu-restricted-extras
pip install opencv-python jupyterlab


# setup git and github ssh
./setup-ssh-git.sh

# run apply dotfiles
./apply-dotfiles.sh

# open ssh port
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 5900

# fix vnc remote desktop bug
gsettings set org.gnome.Vino require-encryption false

# alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install -y alacritty

# Dash to dock
sudo apt install -y gnome-tweaks
echo
echo "Go to https://extensions.gnome.org/extension/307/dash-to-dock/ and install Dash to Dock"

# temp sensors
sudo apt install -y lm-sensors
sudo sensors-detect
sudo service kmod start

# increase scrollbar size
cp ../dotfiles/gtk.css ~/.config/gtk-3.0

# DEEP LEARNING / DATA SCIENCE
echo "Installing Anaconda"
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh -P ~/Downloads
chmod 777 ~/Downloads/*.sh
~/Downloads/Anaconda*
conda config --set auto_activate_base true

./deep-learning-setup.sh

echo
echo "Open Firefox, and go to 'about:config'"
echo "Find 'mousewheel.min_line_scroll_amount', and enter '90'"
echo "Find 'mousewheel.acceleration.factor', and enter '20'"
echo
read -n 1 -s -r -p "Press any key when done"


pip install -r basic-requirements.txt

# SWIFT kernel on jupyter notebook
# see: https://github.com/google/swift-jupyter

# download prebuilt for 20.04
mkdir ~/Swift-Jupyter-Notebook
cd ~/Swift-Jupyter-Notebook/
wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.13/swift-tensorflow-RELEASE-0.13-ubuntu20.04.tar.gz -P ~/Swift-Jupyter-Notebook
tar xvf ~/Swift-Jupyter-Notebook/*
git clone https://github.com/google/swift-jupyter.git
conda create -n swift-tensorflow python=3.6
conda activate swift-tensorflow
conda install jupyter numpy matplotlib
cd swift-jupyter
python3 register.py --sys-prefix --swift-python-use-conda --use-conda-shared-libs --swift-toolchain ..
cd ~


# C++ kernel for jupyter notebook
# see: https://github.com/jupyter-xeus/xeus-cling
conda deactivate 
conda create -n cling
conda activate cling
conda install xeus-cling -c conda-forge
conda install jupyter lab

