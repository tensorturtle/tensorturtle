
#!/bin/bash
sudo apt install git
# setup git username and email
read -p "Enter git email: " GIT_EMAIL
git config --global user.email $GIT_EMAIL
read -p "Enter git username: " GIT_USERNAME
git config --global user.name $GIT_USERNAME
git config --global core.editor vim
git config pull.rebase true

ssh-keygen -t ed25519 -C "tensorturtle@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# for macOS sierra+
# docs: https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent

echo "echo "Host*
  AddKeysToAgent yes 
  UseKeychain yes 
  IdentityFile ~/.ssh/id_ed25519" > ~/Test/afile.txt 

ssh-add -K ~/.ssh/id_ed25519

echo
echo Copy the contents of public SSH key: ~/.ssh/id_ed25518.pub.
echo Go to your github profile and paste SSH key.


