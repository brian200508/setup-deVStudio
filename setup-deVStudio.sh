#!/bin/bash

# Fix vscode.list: Use signed Microsoft Repo
echo "Signing VSCode repository..."
sudo apt install -y wget gpg apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update -y
sudo apt upgrade -y 

# Git, Python3 and essentials
#echo "Setting up Git, Python3 and essentials"
#sudo apt update -y
#sudo apt install -y build-essential curl git wget pgp python-is-python3 python3-distutils python3-pip apt-transport-https
echo "Setting up Git"
sudo apt update -y
sudo apt install -y git

## Node.js
#echo "Setting up Node.js..."
#sudo apt update -y
#sudo apt install -y nodejs npm

# Git config
echo "Done."
echo ""
echo "Don't forget Your Git config:"
echo "    git config --global user.name \"Your Name\""
echo "    git config --global user.email \"your.email-address@domain.com\""
echo ""
echo "Close VSCode and restart with:"
echo "    code --no-sandbox"
echo ""

