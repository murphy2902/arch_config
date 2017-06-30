export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local"

export WEKAHOME="/usr/share/java/weka"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export PATH=$WEKAHOME/:$PATH

export BROWSER="chromium"
# Changing this will mess up 256 color compat with [n]vim
export CLASSPATH=/usr/share/java/weka/weka.jar:$CLASSPATH
export EDITOR="nvim"
export EMAIL="murphy2902@gmail.com"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME/gimp-2.8"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GOPATH=$HOME/documents/projects/go
export LESSHISTFILE=$XDG_DATA_HOME/lesshistory
export MAIL=$XDG_DATA_HOME
export PATH=$GOPATH/bin/:$PATH
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PGPPATH="$GNUPGHOME/"
export SUDO_EDITOR="rvim"
export TEMPDIR="/tmp"
export TERM="xterm-256color"
# DO NOT SET, FUCKS UP NEW COMPUTERS
#export XAUTHORITY="$XDG_CONFIG_HOME/x/.Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x/.xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export APP_BROWSER=$BROWSER
export APP_CALENDAR="california"
export APP_EDITOR="nvim"
export APP_FILEBROWSER="pcmanfm"
export APP_EMAIL="thunderbird"
export APP_TERMINAL="urxvt"
export APP_VIDEO="vlc"

PS1=' $ '
