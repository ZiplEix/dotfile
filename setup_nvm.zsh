#!/usr/bin/env zsh

echo "\n<<< Starting NVM Setup >>>\n"

if exists nvm; then
    echo "NVM is already installed."
else
    echo "NVM does not exist. Installing it now."
    PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash'
fi
