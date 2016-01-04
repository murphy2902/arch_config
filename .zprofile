for file in ~/.config/sh/*.sh; do
	. $file
done

[[ -f ~/.config/zsh/.zshrc ]] && . ~/.config/zsh/.zshrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
