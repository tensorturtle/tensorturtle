# Download this script
# Make it executable `sudo chmod +x setup-github.sh
# run it: ./setup-github.sh
#!/bin/bash
sudo apt update
sudo apt install -y git xclip
# setup git username and email
read -p "Enter GitHub email: " GIT_EMAIL
git config --global user.email $GIT_EMAIL
read -p "Enter GitHub username: " GIT_USERNAME
git config --global user.name $GIT_USERNAME
git config --global core.editor vim
git config pull.rebase true

ssh-keygen -t ed25519 -C $GIT_EMAIL
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
echo
echo SSH key has been copied to clipboard.
echo Go to your github profile and paste SSH key.
