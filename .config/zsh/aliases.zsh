##
# [ ~/.config/zsh/aliases.zsh ]
# Sourced by ~/.zshrc
# Only aliases belong here.
##

# Aliases
alias su="su -s /bin/zsh"
alias sudo="sudo -E"
alias sxiv="sxiv -dr"

alias dmenu_run="dmenu_run -fn '-artwiz-cure-medium-r-normal-*-11-110-75-75-p-90-iso8859-1' -p '>' -b -nb '#170F0D' -nf '#AA964C' -sf '#170F0D' -sb '#544B2E'"

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lal='ls -Al'

alias suspend="dbus-send --system --print-reply \
            --dest='org.freedesktop.UPower' \
            /org/freedesktop/UPower \
            org.freedesktop.UPower.Suspend"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
