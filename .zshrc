##
# [ ~/.zshrc ]
##

## if not running interactively , don't do anything
[[ $- != *i* ]] && return

## Some environment variables.
TERM="rxvt-256color"
EDITOR=vim
BROWSER=firefox

## Source config files (aliases, settings, styles)
for r in $HOME/.config/zsh/*.zsh; do
    source $r
done

## Source plugins
#for r in $HOME/.config/zsh/plugins/*.zsh; do
#    source $r
#done

eval "$(gurnt --completion=zsh)"

