##
# [ ~/.config/zsh/style.zsh ]
# Sourced by ~/.zshrc
# Initializes syntax highlighting
# and configures colors.
##

## Load dat.
autoload -U colors && colors

## Prompt
PROMPT="%{$fg_bold[black]%}────╼%{$reset_color%} "
RPROMPT="%{$fg_bold[red]%}%~%{$reset_color%}"

## Enable highlighters. (main brackets pattern cursor root)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
source "$HOME/.config/zsh/syntax/zsh-syntax-highlighting.zsh"

## Colored man pages
export LESS_TERMCAP_mb=$'\E[1;30m'
export LESS_TERMCAP_md=$'\E[32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;33m'
export LESS_TERMCAP_ue=$'\E[1;33m'
export LESS_TERMCAP_us=$'\E[1;31m'
