#!/usr/bin/env bash

# basics
sudo apt install -y curl

# git
sudo apt install -y git
sudo apt install -y git-flow
cp ./.gitconfig ~/.gitconfig

# slack
sudo snap install slack --classic

# zsh
sudo apt install -y zsh

##-oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## zsh-completions
echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_19.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_19.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
sudo apt update
sudo apt install -y zsh-completions

## powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo chsh -s $(which zsh)

# i3
sudo apt install -y i3
sudo apt install -y feh
sudo apt install -y rofi

# htop
sudo apt install -y htop

# firefox
sudo apt install -y firefox

# chromium
sudo apt install -y chromium-browser
sudo apt install -y chromium-browser-l10n
sudo apt install -y chromium-codecs-ffmpeg

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# java
sudo apt install -y openjdk-8-jdk

# maven
sudo apt install -y maven

# postman
sudo snap install postman

# node
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# angular
sudo npm i -g @angular/cli > /dev/null

# docker
sudo apt install -y apt-transport-https
sudo apt install -y ca-certificates
sudo apt install -y gnupg-agent
sudo apt install -y software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install -y docker-ce
sudo apt install -y docker-ce-cli
sudo apt install -y containerd.io
sudo docker run hello-world

sudo groupadd docker
sudo gpasswd -a "$USER" docker

# screenshot
sudo apt install -y flameshot

# audio
sudo apt install -y audacious

#video
sudo apt install -y mpv

# discord
sudo snap instal discord

# misc
sudo apt-get install -y keepassx 
sudo apt-get install -y nautilus-dropbox 
