
alias c='clear'

# Fast navigating
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# List and find
alias la='ls -a'
alias ll='ls -FGlAhp'
alias lf='la | grep'
alias llf='ll | grep'
alias pf='ps -e | grep'

# Pretty print path
alias path='echo -e ${PATH//:/\\n}'

alias todo='nvim ~/.todo.md'

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

# Get IP adress on ethernet.
function my_ip() {
	case `uname` in
		Darwin)	interface='en0'		;;
		*)	interface='eth0'	;;
	esac

	case $1 in
		4)	filter='$1=="inet"'	;;
		6)	filter='$1=="inet6"'	;;
		*)	filter='/inet/'		;;

	esac
	MY_IP=$(ifconfig ${interface} | awk "${filter} { print \$2  }" |
		sed -e s/addr://)
	echo ${MY_IP:-"Not connected"}
}

# Set local git user info to github account
function me() {
  if [ -z ${GITHUB_USER+x} ]
  then
    echo "GITHUB_USER is unset"
    return 0
  fi

  if [ -z ${GITHUB_EMAIL+x} ]
  then
    echo "GITHUB_EMAIL is unset"
    return 0
  fi

  git config user.name "$GITHUB_USER"
  git config user.email "$GITHUB_EMAIL"
}

