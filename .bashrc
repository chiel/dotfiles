export EDITOR='nvim'
export HISTSIZE=10000
export HISTFILESIZE=10000
export PAGES='less -R'
export LC_ALL=en_GB.UTF-8
export GPG_TTY=$(tty)
[ "$TERM" = "xterm" ] && export TERM="xterm-256color"

alias dc='docker compose'
alias k='kubectl'
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
if [ `uname` = 'Darwin' ]; then
	c='4'
	host='(╯°□°）╯︵ ┻━┻ '
fi

# git completion + prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM='auto'

# set prompt
PS1='\n\[\e[0;3${c}m\]\u\[\e[0m\] @ \[\e[1;3${c}m\]${host}\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '

export PATH="node_modules/.bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"

if [ -d "$HOME/.bin" ]; then
	export PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
	export GOPATH="$HOME/go"
	export PATH="$GOPATH/bin:$PATH"
fi
