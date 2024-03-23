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
# alias ls='exa -laFh --git'
# alias exa='exa -laFh --git'
alias ls='exa -laFh'
alias exa='exa -laFh'
alias cc='clear'
alias gta='git add'
alias gtc='git commit -m'
alias gtp='git push'
alias cdd='cd /home/baptiste/delivery/tek2'
# alias man='batman'
alias trail='bat <<<${(F)path}'
alias code='/mnt/c/Users/leroy/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code'
alias bat='batcat'

# GitHub Copilot CLI Aliases
echo 'eval "$(gh copilot alias -- zsh)"' >> ~/.zshrc

# Set some environment variables.
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/baptiste/delivery/tek2/myteams/libs/myteams
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/baptiste/flutter/bin
export PATH=$PATH:/mnt/c/Users/leroy/AppData/Local/Programs/Microsoft\ VS\ Code/bin
export PATH=$PATH:/home/baptiste/.local/bin

# Load the nvm configuration.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set the Go path.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Define custom functions.
function mkcd() {
    mkdir -p "$@" && cd "$_"
}

apt() {
    command nala "$@"
}
sudo() {
    if [ "$1" = "apt" ]; then
        shift
        command sudo nala "$@"
    else
        command sudo "$@"
    fi
}

# pnpm
export PNPM_HOME="/home/baptiste/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[[ -s "/home/baptiste/.gvm/scripts/gvm" ]] && source "/home/baptiste/.gvm/scripts/gvm"
eval "$(gh copilot alias -- zsh)"
