#!/usr/bin/env zsh

echo "\n<<< Starting NODE Setup >>>\n"

# Node version are managed with "nvm" (Node Version Manager) installed by setup_nvm.zsh
# See zshrc for the nvm configuration

source ~/.nvm/nvm.sh

if exists node; then
    echo "Node $(node --version) & NPM $(npm --version) already installed."
else
    echo "Installing Node & NPM with nvm..."
    nvm install --lts --latest-npm
fi

# Install Global NPM Packages
npm install --global firebase-tools
npm install --global typescript

echo "Global NPM Packages Installed: "
npm list --global --depth=0
