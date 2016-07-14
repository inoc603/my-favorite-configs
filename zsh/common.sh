
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

# pretty print path
alias path='echo -e ${PATH//:/\\n}'

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

# Extract compressed file
function extract()      # Handy Extract Program
{
	if [ -f $1  ] ; then
		case $1 in
		*.tar.bz2)   tar xvjf $1     ;;
		*.tar.gz)    tar xvzf $1     ;;
		*.bz2)       bunzip2 $1      ;;
		*.rar)       unrar x $1      ;;
		*.gz)        gunzip $1       ;;
		*.tar)       tar xvf $1      ;;
		*.tbz2)      tar xvjf $1     ;;
		*.tgz)       tar xvzf $1     ;;
		*.zip)       unzip $1        ;;
		*.Z)         uncompress $1   ;;
		*.7z)        7z x $1         ;;
		*)           echo "'$1' cannot be extracted via >extract<" ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi

}

# Get IP adress on ethernet.
function my_ip()
{
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
