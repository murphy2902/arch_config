#!/bin/sh
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

if [ -s ~/.config/xmodmap/xmodmap.conf ]; then
	xmodmap ~/.config/xmodmap/xmodmap.conf
fi

# Running .Xresources

[[ -f ~/.config/x/.Xresources ]] && xrdb -merge ~/.config/x/.Xresources

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

#/usr/bin/xscreensaver -no-splash &

nitrogen --restore &
#mpd /home/ryan/.config/mpd/mpd.conf &&
#mpdscribble --conf /home/ryan/.config/mpdscribble/mpdscribble.conf &&

exec i3
