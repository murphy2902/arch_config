# ls commands
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'

# pacman shortcuts
alias pac='sudo pacman -S'
alias pacs='pacman -Ss'
alias uninstall='sudo pacman -R'

# updated program calls
alias scrot='scrot -f -e '"'"'mv $n ~/images/screenshots'"'"
alias conky='conky -c ~/.config/conky/.conkyrc'
alias irssi='screen irssi'
alias mkdir='mkdir -pv'
#alias vim='vim -u ~/.config/vim/vimrc.conf'

# Safety dance
alias rm='rm -I'
alias mv='mv -i'

# Error Handling, because I suck
alias :q='exit' # Dammit vim
alias :x='exit' # Dammit vim
alias quit='exit'
alias sl='ls'

alias please='sudo $(history -p !!)'
alias again='clear; $(history -p !!)'

alias cdtasker='cd $GOPATH/src/github.com/oatmealraisin/tasker && pwd'
alias vitasklist='nvim ~/.local/tasker/tasklist.csv'
alias t='tasker status'
alias today='tasker today'
alias todo='tasker today'

alias o='xdg-open'

alias python_gitignore='curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore > .gitignore'
# Does not work with pipenv
#alias deactivate='exit'

alias sshme='eval <(ssh-agent -s) && ssh-add ~/.ssh/id_rsa.pub'

alias journal='vim ~/documents/notes/journal'
