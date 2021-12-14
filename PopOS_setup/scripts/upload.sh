#!/bin/bash
DEST='../dotfiles'
cp ~/.bash_aliases $DEST
cp ~/.bashrc $DEST
cp ~/.alacritty.yml $DEST
cp ~/.tmux.conf $DEST
#cp ~/.config/nvim/init.vim $DEST
cp ~/.config/wezterm/wezterm.lua $DEST

