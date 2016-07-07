for file in ~/.config/sh/*.sh; do
	source $file
done

export THISSUCKS='asdf'

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit
