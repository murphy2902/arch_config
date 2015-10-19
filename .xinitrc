#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Custom key bindings
[[ -s $XDG_CONFIG_HOME/xmodmap/xmodmap.conf ]] && xmodmap $XDG_CONFIG_HOME/xmodmap/xmodmap.conf

# X related script stuff
[[ -f $XDG_CONFIG_HOME/x/colorscheme.sh ]] && . $XDG_CONFIG_HOME/x/colorscheme.sh
# Running .Xresources
[[ -f $XDG_CONFIG_HOME/x/.Xresources ]] && xrdb -merge $XDG_CONFIG_HOME/x/.Xresources

#/usr/bin/xscreensaver -no-splash &

#mpd $XDG_CONFIG_HOME/mpd/mpd.conf &&
#mpdscribble --conf $XDG_CONFIG_HOME/mpdscribble/mpdscribble.conf &

exec i3
