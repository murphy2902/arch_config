for file in ~/.config/sh/*.sh; do
	. $file
done

for file in ~/.config/zsh/*.zsh; do
	. $file
done

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
