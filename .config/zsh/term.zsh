# More descriptive window titles

# Write some info to terminal title.
# This is seen when the shell prompts for input.
function precmd {
    print -Pn "\e]0;zsh %(1j,%j job%(2j|s|); ,)%~\a"
}

# Write command and args to terminal title.
# This is seen while the shell waits for a command to complete.
function preexec {
    printf "\033]0;%s\a" "$1"
}
