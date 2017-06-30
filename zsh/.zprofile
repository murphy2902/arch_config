# .zprofile
# This is just a placeholder to funnel stuff to my configs

[[ -f ~/.config/zsh/.zshrc ]] && . ~/.config/zsh/.zshrc

[[ -z "$DISPLAY" ]] && [[ -n "$XDG_VTNR" ]] && [[ "$XDG_VTNR" -eq 1 ]] && \
	exec startx
