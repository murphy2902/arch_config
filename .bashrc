# Transparency handling

#[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null


# ls commands
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'

# updated program calls
alias vim='vim -u ~/.config/vim/vimrc.conf'
alias pac='sudo pacman -S'
alias pacs='pacman -Ss'
alias update='sudo pacman -Syu'

# Safety dance

alias rm='rm -f'

# Error Handling
alias :q='exit'
alias :x='exit'
alias quit='exit'
