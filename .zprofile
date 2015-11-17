for file in ~/.config/zsh/*.zsh; do
	source $file
done

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
