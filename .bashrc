export EDITOR='nvim'
export HISTSIZE=10000
export HISTFILESIZE=10000
export LC_ALL=en_GB.UTF-8
export GPG_TTY=$(tty)
export XDG_CONFIG_HOME="$HOME/.config"

alias dc='docker compose'
alias k='kubectl'
alias l='ls -AFhl --color=always'
alias tf='terraform'

if [ $(uname) = 'Darwin' ]; then
	export CLICOLOR=1
	export LSCOLORS=ExGxcxdxCxegedabagacad
	alias l='ls -AFhl'
fi

if [ -d "$HOME/.bin" ]; then
	export PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
	export GOPATH="$HOME/go"
	export PATH="$GOPATH/bin:$PATH"
fi

# homebrew
if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# git completion + prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM='auto'

PS1='\n\[\e[0;34m\]\u\[\e[0m\] @ \[\e[1;34m\](╯°□°）╯︵ ┻━┻\[\e[0m\] \[\e[1;36m\]\w\[\e[0m\] $(__git_ps1 "[%s]") \n\$ '
