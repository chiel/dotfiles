export EDITOR='vim'
export PAGES='less -R'
[ "$TERM" = "xterm" ] && export TERM="xterm-256color"

alias l='ls -AFhl --color=always'

	# os x is a special little snowflake... (aka stupid)
if [ `uname` = 'Darwin' ]; then
	export CLICOLOR=1
	export LSCOLORS=ExGxcxdxCxegedabagacad
	alias l='ls -AFhl'
fi

c=1

# host-specific colouring
host=`hostname`
if [[ $host =~ ^chiel(-[a-zA-Z0-9]+)?(\.[a-z]+)*$ ]]; then
	c='4'
	host='(╯°□°）╯︵ ┻━┻ '
elif [[ $host =~ ^aenema ]]; then
	c='6'
elif [[ $host =~ ^parabola$ ]]; then
	c='6'
elif [[ $host =~ tinker.io$ ]]; then
	c='5'
elif [ $host = 'web187.webfaction.com' ]; then
	c='6'
fi

# git ps1 settings
source ~/.dotfiles/git/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"

# set prompt
PS1='\n\[\e[0;3${c}m\]\u\[\e[0m\] @ \[\e[1;3${c}m\]${host}\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '

