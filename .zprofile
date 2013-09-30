##
# [ ~/.zprofile ]
# Sourced in login shells
##

export BSPWM_SOCKET=/tmp/bspwm-socket
export PANEL_FIFO=/tmp/panel-fifo

## Set PATH so it contains {usr}/sbin and 
## $HOME/bin if it exists.
export PATH="/sbin:/usr/sbin:$PATH"
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

## Start x automatically
[[ -z $DISPLAY ]] && startx
