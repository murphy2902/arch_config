# ~/.bash_profile

[[ -f ~/.config/bash/.bashrc ]] && . ~/.config/bash/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
