export EDITOR='nvim'
export HISTSIZE=10000
export HISTFILESIZE=10000
export PAGES='less -R'
export LC_ALL=en_GB.UTF-8
export GPG_TTY=$(tty)
[ "$TERM" = "xterm" ] && export TERM="xterm-256color"

alias k='kubectl -n production'
alias ka='kubectl -n acceptance'
alias kc='kubectl -n cache'
alias ks='kubectl -n staging'
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
if [[ $host =~ ^chiel(-[-a-zA-Z0-9]+)?(\.[a-z]+)*$ ]]; then
	c='4'
	host='(╯°□°）╯︵ ┻━┻ '
elif [[ $host =~ ^cesaro ]]; then
	c='6'
elif [[ $host =~ tinker.io$ ]]; then
	c='5'
elif [ $host = 'web187.webfaction.com' ]; then
	c='6'
fi

# git completion + prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM='auto'

# set prompt
PS1='\n\[\e[0;3${c}m\]\u\[\e[0m\] @ \[\e[1;3${c}m\]${host}\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '

export PATH="node_modules/.bin:$PATH"

if [ -d "$HOME/.bin" ]; then
	export PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.krew" ]; then
	export PATH="$HOME/.krew/bin:$PATH"
fi

if [ -d "$HOME/.rbenv" ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

if [ -d "$HOME/godev" ]; then
	export GOPATH="$HOME/godev"
	export PATH="$GOPATH/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
