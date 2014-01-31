#!/bin/sh

##
# ~/.xinitrc
##

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in defaults and keymaps
[ -f $sysresources ] && /usr/bin/xrdb -merge $sysresources
[ -f $sysmodmap ] && /usr/bin/xmodmap $sysmodmap
[ -f $userresources ] && /usr/bin/xrdb -merge $userresources
[ -f $usermodmap ] && /usr/bin/xmodmap $usermodmap

## X font stuff
xset +fp $HOME/.fonts
xset fp rehash
## Disable system beep
xset -b

#compton -cfFb -o 0.32 -O 0.03 -I 0.03 -t 4 -l 4 -r 4 -D2
xsetroot -cursor_name left_ptr
unclutter -root -jitter 5 -idle 2 -noevents &
pgrep -x sxhkd && pkill -x sxhkd
sxhkd &

## Start a fresh panel-fifo
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
## workaround for bspwm bug
## if battery dies bspwm socket needs to be deleted
[ -e /tmp/bspwm:0-socket ] && rm /tmp/bspwm:0-socket
## Start bspwm
exec wm

