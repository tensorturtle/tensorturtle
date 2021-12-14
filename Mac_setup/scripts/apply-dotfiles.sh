# copies dotfiles here to home folder on system

DEST='../config_files'

cd $DEST

cp .bash_profile ~
cp .tmux.conf ~

# source bashrc file to refresh
source ~/.bash_profile

# copy wezterm config to correct location

mkdir -p ~/.config/wezterm
cp wezterm.lua ~/.config/wezterm/wezterm.lua
