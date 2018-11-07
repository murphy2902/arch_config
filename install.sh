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
pacman -S \
	abs \
	arandr \
	archey3 \
	boost \
	chromium \
	clang \
	clang-tools-extra \
	cmake \
	deluge \
	eclipse \
	ettercap \
	expac \
	feh \
	firefox \
	gimp \
	gnuplot \
	gparted \
	go \
	i3 \
	htop \
	lmms \
	lxappearance \
	make \
	mpd \
	ncmpcpp \
	neovim \
	nmap \
	nodejs \
	pcmanfm \
	qutebrowser \
	rfkill \
	scrot \
	sxiv \
	tmux \
	vim \
	vlc \
	weechat \
	xorg-xinit \
	xorg \
	xterm

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
