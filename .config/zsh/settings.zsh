##
# [ ~/.config/zsh/settings.zsh ]
# Sourced by .zshrc
# See ZSH(1) for more info.
##

## Autoloads
#autoload -U colors && colors

## Prompt
PROMPT="%{$fg_bold[black]%}────╼%{$reset_color%} "
RPROMPT="%{$fg_bold[red]%}%~%{$reset_color%}"

## General zsh settings
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=2000
bindkey -v

## Options
setopt extendedglob

## Completion settings
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
#zstyle :compinstall filename '/home/tbck/.zshrc'
autoload -Uz compinit
compinit

