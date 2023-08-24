#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation Unnecessary; already done in the Brewfile

echo "Enter superuser (sudo) password to edit /etc/shells"
echo $(which zsh) | sudo tee -a /etc/shells

echo "ENter user password to change login shell to zsh"
chsh -s $(which zsh)
