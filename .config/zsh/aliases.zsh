##
# [ ~/.config/zsh/aliases.zsh ]
# Sourced by ~/.zshrc
# Only aliases belong here.
##

# Aliases
alias su="su -s /bin/zsh"
alias sudo="sudo -E"
alias sxiv="sxiv -dr"

alias changelog="curl -s ftp://ftp.slackware.com/pub/slackware/slackware64-current/ChangeLog.txt | less"

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lal='ls -Al'

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
