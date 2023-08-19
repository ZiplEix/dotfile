#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Tools
brew install httpie
brew install bat

# Apps
if [ "$(uname -s)" != "Darwin" ]; then
    echo "Not Mac OS X"
else
    brew install --cask --no-quarantine google-chrome
    brew install --cask --no-quarantine visual-studio-code
fi
