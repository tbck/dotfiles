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
xsetroot -cusor_name left_ptr

exec i3 -V >> /home/tbck/i3log 2>&1

