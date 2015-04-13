
#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#[ ! -s ~/.config/mpd/pid ] && mpd /home/ryan/.config/mpd/mpd.conf

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
