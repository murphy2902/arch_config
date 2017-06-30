# .bashrc
# This is just a placeholder to funnel stuff to my configs

[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

[[ -z "$DISPLAY" ]] && [[ -n "$XDG_VTNR" ]] && [[ "$XDG_VTNR" -eq 1 ]] && \
	exec startx
