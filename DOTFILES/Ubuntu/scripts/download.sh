# copies dotfiles here to home folder on system

cd ..
cd dotfiles
cp .* ~ # copies files; ignore warnings
cp -r .* ~ # copies folders; ignore warnings


# Set vimrc location
export MYVIMRC="~/.vimrc/basic.vim"

# Set vim as default git editor
export GIT_EDITOR="vim"

