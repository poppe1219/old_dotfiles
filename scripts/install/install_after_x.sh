#!/bin/bash

HOME_PATH='/home/'
HOME_PATH+=$USER
cd $HOME_PATH


xrandr --output `xrandr --listmonitors | grep "0:" | cut -d " " -f 6` --auto

i3-msg split h
i3-msg exec "i3-sensible-terminal -e top"

git clone git@github.com:robbyrussell/oh-my-zsh.git "$HOME_PATH/.oh-my-zsh"
rm -f "$HOME_PATH/.zshrc"
ln -s "$HOME_PATH/git/dotfiles/.zshrc" "$HOME_PATH/.zshrc"

cd "$HOME_PATH/.wallpapers"
wget http://hdwallpaperdaily.com/wp-content/uploads/2013/08/chinese-dragon-brown-wallpaper.jpg
cd $HOME_PATH
ln -s "$HOME_PATH/git/dotfiles/.config/nitrogen/bg-saved.cfg" "$HOME_PATH/.config/nitrogen/bg-saved.cfg"
ln -s "$HOME_PATH/git/dotfiles/.config/nitrogen/nitrogen.cfg" "$HOME_PATH/.config/nitrogen/nitrogen.cfg"
nitrogen --restore 

cd "$HOME_PATH/.fonts"
wget https://github.com/zavoloklom/material-design-iconic-font/blob/2.2.0/dist/fonts/Material-Design-Iconic-Font.ttf
cd $HOME_PATH

sudo pacman -S --noconfirm lxappearance sddm rofi urxvt-perls vim dmidecode htop xorg-xprop tmux tig 
sudo pacman -S --noconfirm firefox

yaourt -S --noconfirm gtk-theme-arc-grey-git
