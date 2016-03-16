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
alias conky='conky -c ~/.config/conky/.conkyrc'
alias irssi='screen irssi'
alias mkdir='mkdir -pv'
alias vim='vim -u ~/.config/vim/vimrc.conf'
alias nim='nvim'

# jasmine stuff
alias ftp-jasmine='sftp -oPort=20025 murphyjr3@jasmine.cs.vcu.edu'

# Safety dance
alias rm='rm -I'

# Error Handling, because I suck
alias :q='exit' # Dammit vim
alias :x='exit' # Dammit vim
alias quit='exit'
alias sl='ls'

alias lugcraft='ssh -L 25565:localhost:25565 murphyjr3@ouroboros.chpc.vcu.edu'
