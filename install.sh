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

#echo Create a non-root user?
#
#echo Username?  
username=ryan
#
#pacman -S sudo


echo "Installing defaults"
sudo pacman -S --noconfirm --needed \
	alsa-utils \
	expac \
	htop \
	isync \
	lmms \
	lynx \ #needed for neomutt
	make \
	mpd \
	ncmpcpp \
	networkmanager \
	neovim \
	nmap \
	pass \
	pass-otp \
	pulseaudio-bluetooth \
	rfkill \
	tmux \
	urlscan \ # needed for neomutt
	vim \
	weechat \
	wget \
	zsh

echo "Installing languages"
sudo pacman -S --noconfirm --needed \
	automake \
	boost \
	clang \
	clang-tools-extra \
	cmake \
	go \
	nodejs

echo "Installing dev tools"
sudo pacman -S --noconfirm --needed \
	docker \
	pandoc \ # For notes
	git \
	python-pipenv

echo "Installing X"
sudo pacman -S --noconfirm --needed \
	arandr \
	archey3 \
	caprine \
	chromium \
	deluge \
	discord \
	dunst \
	evolution \
	feh \
	firefox \
	firefox-extension-passff \
	gimp \
	gnuplot \
	gparted \
	i3-gaps \
	lxappearance \
	mupdf \
	pavucontrol \
	pcmanfm \
	qutebrowser \
	scrot \
	signal-desktop \
	sxiv \
	termite \
	vlc \
	xbindkeys \
	xorg-xinit \
	xorg \
	xterm

sudo pacman -Fy

#TODO chown the local directory to the user that was created, or maybe wheel group?
#TODO download pacaur and install it using makepkg

mkdir /home/$username/documents
mkdir /home/$username/downloads
mkdir /home/$username/images
mkdir /home/$username/videos
mkdir /home/$username/.local
mkdir /home/$username/.cache
mkdir /home/$username/.cache/neomutt
mkdir /home/$username/documents/projects
mkdir /home/$username/documents/sources
mkdir /home/$username/documents/test

# TODO: install yay

git clone https://aur.archlinux.org/yay.git /home/$username/documents/sources/yay
cd !$
makepkg -i
cd -

yay -S \
	betterlockscreen \
	brightnessctl \
	slack-desktop \
	zoom

systemctl start NetworkManager
systemctl enable NetworkManager
systemctl start bluetooth
systemctl enable bluetooth
