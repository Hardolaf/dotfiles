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

case $1 in
    kde) exec brc gentoo startkde;;
    *) mmaker -vf OpenBox3 &
        openbox --reconfigure &
        exec openbox-session;;
esac

