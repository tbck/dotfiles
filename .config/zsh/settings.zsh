##
# [ ~/.config/zsh/settings.zsh ]
# Sourced by .zshrc
##

## Autoloads
autoload -Uz compinit

## Options
setopt extendedglob

## General zsh settings
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=2000
# vim or emacs line editing
bindkey -e

## Prompt
PROMPT="%{$fg_bold[black]%}────╼%{$reset_color%} "
RPROMPT="%{$fg_bold[red]%}%~%{$reset_color%}"

## Completion settings
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
# initialize completion
compinit
