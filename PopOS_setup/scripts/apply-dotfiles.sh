# idempotent create config dir
mkdir -p ~/.config/wezterm

# copies dotfiles here to home folder on system

cd ..
cd dotfiles

cp .alacritty.yml ~
cp .bash_aliases ~
cp .bashrc ~
cp init.vim ~/.config/nvim
cp .tmux.conf ~
cp wezterm.lua ~/.config/wezterm

# source bashrc file to refresh
source ~/.bashrc
