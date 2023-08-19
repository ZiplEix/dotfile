# zshrc configuration file.

# Set the path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the name of the theme to use.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# Plugins.
plugins=(git)

# Load the oh-my-zsh framework.
source $ZSH/oh-my-zsh.sh

# Set some personal aliases.
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias cc='clear'
alias gta='git add'
alias gtc='git commit -m'
alias gtp='git push'
alias cdd='cd /home/baptiste/delivery/tek2'
alias man='batman'

# Set some environment variables.
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/baptiste/delivery/tek2/myteams/libs/myteams
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/baptiste/flutter/bin

# Load the nvm configuration.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set the Go path.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Define a custom function.
function mkcd() {
    mkdir -p "$@" && cd "$_"
}
