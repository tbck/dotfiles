#
# [ ~/.zprofile ]
# sourced in login shells
#

export BSPWM_SOCKET=/tmp/bspwm-socket
export PANEL_FIFO=/tmp/panel-fifo

# set PATH so it contains {usr}/sbin and 
# $HOME/bin if it exists.
export PATH="/sbin:/usr/sbin:$PATH"
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# start x automatically
[[ -z $DISPLAY ]] && startx
