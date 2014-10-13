
#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#[ ! -s ~/.config/mpd/pid ] && mpd /home/ryan/.config/mpd/mpd.conf

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# ls

alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'

# ERRORS LOL
alias :q=' exit'
alias :x=' exit'
alias cd..='cd ..'
