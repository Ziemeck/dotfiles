#!/bin/bash

echo ## DEPEND ##

sudo apt-get install xfonts-terminus* &&
sudo apt-get install i3 i3status i3-wm i3blocks i3lock &&




echo ## REPO DOWNLOAD ##

git clone https://github.com/Ziemeck/dotfiles.git && cd dotfiles &&
cp i3/config ~/.config/config &&
cp i3/i3status.conf.new  /etc/i3status.conf &&
cp Xdefaults ~/.Xresources && xrdb -merge ~/.Xresources &&
cp i3/lock.sh ~/ &&

echo ## VIM ##

curl http://j.mp/spf13-vim3 -L -o - | sh


