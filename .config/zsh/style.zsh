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
#RPROMPT="%{$fg_bold[red]%}%~%{$reset_color%}"
RPROMPT=""

## Colored man pages
export LESS_TERMCAP_mb=$'\E[1;33m'
export LESS_TERMCAP_md=$'\E[1;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;31m'

## Enable highlighters. (main brackets pattern cursor root)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
source "$HOME/.config/zsh/syntax/zsh-syntax-highlighting.zsh"

## Define styles.
ZSH_HIGHLIGHT_STYLES[default]='none'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[function]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=yellow,underline'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[path]='fg=green,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=green,underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=green,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=green'
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg='green'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='none'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='none'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=green'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=white'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=white'
ZSH_HIGHLIGHT_STYLES[assign]='none'
