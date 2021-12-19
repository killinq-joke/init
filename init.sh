#!/bin/bash

sudo apt update

sudo apt upgrade

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser nvim zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "zsh" >> ~/.bashrc

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -

sudo apt-get install -y nodejs

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

dpkg -i 'download?build=stable&os=linux-deb-x64'
