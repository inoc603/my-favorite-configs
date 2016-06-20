
alias c='clear'

alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias la='ls -a'
alias ll='ls -FGlAhp'
alias lf='la | grep'
alias llf='ll | grep'
alias pf='ps -e | grep'

# Kill process using certain port
# USAGE: freeport PORT
function freeport () {
  lsof -n -i:$1 | grep LISTEN | awk '{ print $2 }' | uniq | xargs kill -9
}

# Check whether a port is in use
# USAGE: checkport PORT
function checkport () {
  lsof -n -i:$1 | grep LISTEN
}
