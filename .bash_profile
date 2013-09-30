#
# ~/.bash_profile
#

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export PATH="/sbin:/usr/sbin:$PATH"
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export BSPWM_SOCKET=/tmp/bspwm-socket
export PANEL_FIFO=/tmp/panel-fifo

[[ -z $DISPLAY ]] && startx
