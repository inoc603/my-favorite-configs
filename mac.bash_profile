bind "set completion-ignore-case on"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ss='ALL_PROXY=socks5://localhost:1080'
alias ll='ls -FGlAhp'
alias c='clear'
alias f='open -a Finder'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'
alias lf='la | grep'                        # find files in current directory, display name only
alias llf='ll | grep'                       # find files in current directory, display full info
alias la='ls -a'                            # show hidden files
alias pf='ps -e | grep'                     # find in ps
