#!/usr/bin/env bash

repoDir="$HOME/Workspace/ubuntu-dotfiles"

cp -rv $repoDir/.config/* $HOME/.config/

cp -rvn $repoDir/.fonts $HOME/.fonts

cp $repoDir/.Xresources $HOME
cp $repoDir/.gitconfig $HOME
cp $repoDir/.zshrc $HOME

fc-cache -vf