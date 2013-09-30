##
# [ ~/.bash_profile ]
##

## if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

## Include system binaries
export PATH="/sbin:/usr/sbin:$PATH"
if [ -d "$HOME/bin" ] ; then
    # set PATH so it includes user's private bin if it exists
    PATH="$HOME/bin:$PATH"
fi

## Needed for bspwm and bar.
export BSPWM_SOCKET=/tmp/bspwm-socket
export PANEL_FIFO=/tmp/panel-fifo

## Start X on login.
[[ -z $DISPLAY ]] && startx
