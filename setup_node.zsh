#!/usr/bin/env zsh

echo "\n<<< Starting NODE Setup >>>\n"

# Node version are managed with "nvm" (Node Version Manager) installed by setup_nvm.zsh
# See zshrc for the nvm configuration

source ~/.nvm/nvm.sh

if exists node; then
    echo "Node $(node --version) & NPM $(npm --version) already installed."
else
    echo "Installing Node & NPM with nvm..."
    # nvm install --lts --latest-npm
    nvm install 18.15.1
fi
