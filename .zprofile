##
# [ ~/.zprofile ]
# Sourced in login shells
##

#export BSPWM_SOCKET=/tmp/bspwm-socket
export PANEL_FIFO=/tmp/panel-fifo
export BSPWM_TREE=/tmp/bspwm-tree
export BSPWM_HISTORY=/tmp/bspwm-history
export BSPWM_STACK=/tmp/bspwm-stack

## Set PATH so it contains {usr}/sbin and 
## $HOME/bin if it exists.
export PATH="$PATH:/usr/sbin:/sbin"
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
export PATH="$PATH:."

## Start x automatically (ssh is nawp need some more checks)
#[[ -z $DISPLAY ]] && startx
