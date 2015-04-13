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


pacman -S sudo
pacman -S abs arandr archey3 boost chromium clang clang-tools-extra cmake deluge eclipse ettercap expac freecad gimp gnuplot gparted i3 irssi jdk8-openjdk lmms lxappearance mpd ncmpcpp netbeans nitrogen nmap nodejs pcmanfm puddletag redshift rfkill screen screenfetch scrot shutter sxiv vim vlc wordpress wine wireshark-cli wireshark-gtk xorg xterm 
abs
mkdir /var/abs/local
#TODO chown the local directory to the user that was created, or maybe wheel group?
#TODO download pacaur and install it using makepkg

