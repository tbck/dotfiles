##
# [ ~/.bashrc ]
##

## If not running interactively , don't do anything.
[[ $- != *i* ]] && return

TERM="screen-256color"
EDITOR=vim
BROWSER=firefox

## Dat PS1.
[ -z "$PS1" ] && return
set_prompt_style () {
    PS1="\[\e[1;33m\]\u \[\e[0m\][\[\e[1;31m\]\w\[\e[0m\]] "
}
set_prompt_style

## Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
## Append to the history file, don't overwrite it
shopt -s histappend
## For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTSIZE=1000
HISTFILESIZE=2000

## Update the values of LINES and COLUMNS after each command.
shopt -s checkwinsize

## Enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

## Some more ls aliases.
alias ll='ls -l'
alias la='ls -A'

## Aliases
alias sudo="sudo -E"
alias suspend="dbus-send --system --print-reply --dest='org.freedesktop.UPower' /org/freedesktop/UPower org.freedesktop.UPower.Suspend"
## Alias definitions.
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

## enable programmable completion features (you don't need to enable
## this, if it's already enabled in /etc/bash.bashrc and /etc/profile
## sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
