# Transparency handling

#[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

export EDITOR="vim"
export BROWSER="chromium"

# ls commands
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'

# cd shortcuts
alias downloads='cd ~/downloads'
alias documents='cd ~/documents'
alias videos='cd ~/videos'
alias projects='cd ~/documents/projects'
alias school='cd ~/documents/school'

# pacman shortcuts
alias pac='sudo pacman -S'
alias pacs='pacman -Ss'
alias update='sudo pacman -Syu'
alias uninstall='sudo pacman -R'

# updated program calls
alias vim='vim -u ~/.config/vim/vimrc.conf'

# Safety dance

alias rm='rm -f'

# Error Handling
alias :q='exit'
alias :x='exit'
alias quit='exit'
alias sl='ls'

# Scripts

alias freehosts='sudo mv /etc/hosts /'
alias blockhosts='sudo mv /hosts /etc/'
alias wpasupup='sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias mpkg='makepkg -scif'
alias tartar='tar -xzvf'
alias please='sudo $(history -p !!)'


######################################################
#  Customization
######################################################

#PS1='[\u@\h \W]\$' #DEFAULTj
PS1=' > '
