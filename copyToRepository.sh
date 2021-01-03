#!/usr/bin/env bash

repoDir="$HOME/Workspace/ubuntu-dotfiles"

cp -r $HOME/.config/alacritty/* $repoDir/.config/alacritty/
cp -r $HOME/.config/i3/config $repoDir/.config/i3/

if [ -e $HOME/.Xresources ]
 then cp $HOME/.Xresources $repoDir/
fi
if [ -e $HOME/.gitconfig ]
 then cp $HOME/.gitconfig $repoDir/
fi
if [ -e $HOME/.zshrc ]
 then cp $HOME/.zshrc $repoDir/
fi
