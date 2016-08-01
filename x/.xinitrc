#!/bin/bash
# If you don't know a command, don't forget to google it and look at the man
# page!  I'll comment special tricks :)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Custom key bindings
# [[ ]] tests for existence, (see man test)
[[ -f $XDG_CONFIG_HOME/xmodmap/xmodmap.conf ]] \
	&& xmodmap $XDG_CONFIG_HOME/xmodmap/xmodmap.conf

#/usr/bin/xscreensaver -no-splash &

# Check out thmr @ github.com/oatmealraisin/thmr
[[ -e `which thmr` ]] \
	&& `which thmr` flcl

xbindkeys

dunst &
#mopidy &
#mpdscribble --conf $XDG_CONFIG_HOME/mpdscribble/mpdscribble.conf &

#exec i3
