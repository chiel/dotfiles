source ~/.dotfiles/git/git-completion.bash

# language
export LANG="en_GB.UTF-8"
export LANGUAGE="en"
export LC_CTYPE="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"

# paths
PATH="/usr/bin:/bin:/usr/sbin:/sbin"

if [ -d "/usr/local" ]; then
	PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi

if [ -d "$HOME/.bin" ]; then
	PATH="$HOME/.bin:$PATH"
fi

# editor/pager/term
export EDITOR='vim'
export PAGES='less -R'
export TERM='xterm-256color'

# git ps1 settings
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUPSTREAM="auto"

# aliases
alias l='ls -AFhl --color=always'
alias v='vim -O'
alias ssh='ssh -A'

# get symbolic name
symhost=`cat /etc/symbolic_hostname 2> /dev/null`
if [ "$symhost" == '' ]; then
	symhost=`hostname`
fi

# local
if [[ $symhost =~ ^chiel(-[a-zA-Z0-9]+)?(\.[a-z]+)?$ ]]; then
	c='4'
	# colours for ls
	export CLICOLOR=1
	export LSCOLORS=ExGxcxdxCxegedabagacad
	symhost='(╯°□°）╯︵ ┻━┻ '

	# define 'l' without --color as it doesn't work on os x
	alias l='ls -AFhl'

# rackspace
elif [[ $symhost =~ ^parabola$ ]]; then
	c='6'

elif [[ $symhost =~ tinker.io$ ]]; then
	c='5'

# linode
elif [[ $symhost =~ ^li[0-9]{3}-[0-9]{3}$ ]]; then
	c='5'
	symhost='parabol'

# www.chielkunkels.com
elif [ $symhost = 'web187.webfaction.com' ]; then
	c='6'

# other
else
	c='1'

fi

# set prompt
PS1='\n\[\e[0;3${c}m\]\u\[\e[0m\]@\[\e[1;3${c}m\]${symhost}\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '