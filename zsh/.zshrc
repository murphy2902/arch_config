# Lines configured by zsh-newuser-install
HISTFILE=~/.local/zsh/history
HISTSIZE=1000000000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ryan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

for file in ~/.config/sh/*.sh; do
	. $file
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Correct misspelled commands
setopt correct
