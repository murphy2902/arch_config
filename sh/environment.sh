export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local"

export WEKAHOME="/usr/share/java/weka"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export PATH="$HOME/.gem/ruby/2.5.0/bin/:$PATH"

export BROWSER="firefox"
# Changing this will mess up 256 color compat with [n]vim
export CLASSPATH=/usr/share/java/weka/weka.jar:$CLASSPATH
export EDITOR="vim"
export EMAIL="murphy2902@gmail.com"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME/gimp-2.8"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export GOPATH=$HOME/documents/projects/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
export MYVIMRC=$XDG_CONFIG_HOME/vim/vimrc.conf

export LESSHISTFILE=$XDG_DATA_HOME/lesshistory
mkdir -p $XDG_DATA_HOME/mail \
	&& export MAIL=$XDG_DATA_HOME/mail \
	&& export MAILPATH=$MAIL
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PGPPATH="$GNUPGHOME/"
export R_PROFILE_USER=$XDG_CONFIG_HOME/r/.Rprofile
export R_HOME_USER=$XDG_DATA_HOME/r
export R_LIBS_USER=$R_HOME_USER/library
export R_HISTFILE=$XDG_CACHE_HOME/r/hist.Rhistory
export SUDO_EDITOR="rvim"
export TEMPDIR="/tmp"
export TERM="rxvt-unicode-256color"
# DO NOT SET, FUCKS UP NEW COMPUTERS
#export XAUTHORITY="$XDG_CONFIG_HOME/x/.Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x/.xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export APP_BROWSER=$BROWSER
export APP_CALENDAR="california"
export APP_EDITOR="nvim"
export APP_FILEBROWSER="pcmanfm"
export APP_EMAIL="thunderbird"
export APP_TERMINAL="termite"
export APP_VIDEO="vlc"

PS1=' $ '
