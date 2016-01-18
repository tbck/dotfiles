##
# [ ~/.zprofile ]
# Sourced in login shells
##

## Set PATH so it contains {usr}/sbin and 
## $HOME/bin if it exists.
export PATH="$PATH:/usr/sbin:/sbin"
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
export PATH="$PATH:."

