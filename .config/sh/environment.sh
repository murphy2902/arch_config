export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local"

export WEKAHOME="/usr/share/java/weka"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export PATH=$WEKAHOME/:$PATH

export BROWSER="chromium"
export CLASSPATH=/usr/share/java/weka/weka.jar:$CLASSPATH
export EDITOR="vim"
export GOPATH=$XDG_CONFIG_HOME/go
export SUDO_EDITOR="rvim"
export EMAIL="murphy2902@gmail.com"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME/gimp-2.8"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export TERM="xterm-256color"
export THEME="haruko"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PGPPATH="$GNUPGHOME/"
export XAUTHORITY="$XDG_CONFIG_HOME/x/.Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x/.xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Scripts

alias freehosts='sudo mv /etc/hosts /etc/toasts' # A toast to distraction!
alias blockhosts='sudo mv /etc/toasts /etc/hosts' # And distraction's inevitable reply.
# this probably isn't a good thing to have, but Arch's internet is wonky, so there.
alias wpasupup='sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias mpkg='makepkg -scif' # This will probably be stupid when I install an AUR helper
alias tartar='tar -xzvf' # There's an xkcd comic about this...
alias please='sudo $(history -p !!)'
alias again='clear; $(history -p !!)'
alias gitpom='git push origin master'
alias copyycm='cp ~/.config/vim/.ycm_extra_conf.py .'


# # # # # # # # # # # # # #
#  Customization
# # # # # # # # # # # # # #

#PS1='[\u@\h \W]\$' #DEFAULTj
PS1=' > '
# Set shell to vi mode
set -o vi
