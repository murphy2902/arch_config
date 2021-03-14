#!/bin/bash

# This is for installing by arch build, including configuring the AUR, 
# installing packages, installing config files, creating necessary 
# directories, enabling daemons, etc.  It should be run directly after 
# finishing the Arch Linux Beginners Installation Guide.
# 
# This should be run from the root account.
# TODO Enable multilib
# TODO:  Make it create a new user, prompt for name
# TODO:  Make it create the directory structure for the new user
# TODO:  Prompt for possibly unnecessary packages, eg wireshark, gimp
# TODO:  Check for 64 or 32 bit system
# TODO:  Check for ARM system
# TODO:  Intuitive queries, "Install without wm?"

echo Create a non-root user?

echo Username?  
username=ryan

pacman -S sudo

echo "Installing defaults"
pacman -S --noconfirm \
	abs \
	expac \
	htop \
	lmms \
	make \
	mpd \
	ncmpcpp \
	neovim \
	nmap \
	rfkill \
	tmux \
	vim \
	weechat \

echo "Installing languages"
	automake \
	boost \
	clang \
	clang-tools-extra \
	cmake \
	go \
	nodejs

echo "Installing X"
pacman -S --noconfirm
	arandr \
	archey3 \
	chromium \
	deluge \
	dunst \
	feh \
	firefox \
	gimp \
	gnuplot \
	gparted \
	i3 \
	lxappearance \
	pcmanfm \
	qutebrowser \
	scrot \
	sxiv \
	vlc \
	xorg-xinit \
	xorg \
	xterm

echo "Installing packages for neovim"

sudo pacman -S --noconfirm \
	neovim \
	nodejs \
	npm \
	python-neovim \
	python2-neovim \
	rubygems \
	yarn


#TODO chown the local directory to the user that was created, or maybe wheel group?
#TODO download pacaur and install it using makepkg

mkdir /home/$username/documents
mkdir /home/$username/downloads
mkdir /home/$username/images
mkdir /home/$username/videos
mkdir /home/$username/.local
mkdir /home/$username/.cache
mkdir /home/$username/documents/projects
mkdir /home/$username/documents/sources
mkdir /home/$username/documents/test

# TODO: install yay

yay -S betterlockscreen
yay -S brightnessctl
