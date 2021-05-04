# copies dotfiles here to home folder on system

cd ..
cd dotfiles
cp .* ~ # copies files; ignore warnings
cp -r .* ~ # copies folders; ignore warnings

# source bashrc file to refresh
source ~/.bashrc
