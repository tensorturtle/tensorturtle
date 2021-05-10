#!/bin/bash
sudo apt update
sudo apt upgrade

# use this script to set up a fresh installation of Pop!_OS

sudo apt install -y htop

sudo apt install -y neovim

# setup git and github ssh
./setup-ssh-git.sh

# alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install -y alacritty

# Dash to dock
sudo apt install -y gnome-tweaks
echo
echo "Go to https://extensions.gnome.org/extension/307/dash-to-dock/ and install Dash to Dock"

# increase scrollbar size
cp ../dotfiles/gtk.css ~/.config/gtk-3.0

# install anaconda
# prerequisites
echo "Installing Anaconda"
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
chmod 777 *.sh
./Anaconda*
conda config --set auto_activate_base true

echo
echo "Open Firefox, and go to 'about:config'"
echo "Find 'mousewheel.min_line_scroll_amount', and enter '90'"
echo "Find 'mousewheel.acceleration.factor', and enter '20'"
echo
read -n 1 -s -r -p "Press any key when done"



