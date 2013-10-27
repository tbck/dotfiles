#!/bin/sh

##
# ~/.xinitrc
##

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

## X font stuff
xset +fp $HOME/.fonts
xset fp rehash

## Disable system beep
xset -b

## Merge in defaults and keymaps
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

#compton -cfFb -o 0.32 -O 0.03 -I 0.03 -t 4 -l 4 -r 4 -D2
#xsetroot -cursor_name left_ptr
#unclutter -root -jitter 5 -idle 2 -noevents &
#hsetroot -fill ~/pictures/walls/large/leaves2.jpg

## Start a fresh panel-fifo
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
## Start bspwm
#exec bspwm -s "$PANEL_FIFO" -p W
exec wm
