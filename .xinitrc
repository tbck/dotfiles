#!/bin/sh
#
# ~/.xinitrc
#

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# X font stuff
xset +fp $HOME/.fonts
xset fp rehash

#disable system beep
xset -b

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    /usr/bin/xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    /usr/bin/xmodmap $sysmodmap
fi
if [ -f $userresources ]; then
    /usr/bin/xrdb -merge $userresources
fi
if [ -f $usermodmap ]; then
    /usr/bin/xmodmap $usermodmap
fi

# start a fresh panel-fifo
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
# start sxhkd and finally bspwm
sxhkd &
bspwm -s "$PANEL_FIFO" -p W
