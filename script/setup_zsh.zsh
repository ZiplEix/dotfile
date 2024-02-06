#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation Unnecessary; already done in the Brewfile

if grep -Fxq "$(which zsh)" /etc/shells; then
    echo "$(which zsh) is already in /etc/shells."
else
    echo "$(which zsh) is not in /etc/shells. Adding it now."
    echo "Enter superuser (sudo) password to edit /etc/shells"
    echo $(which zsh) | sudo tee -a /etc/shells >/dev/null
fi

if [ "$SHELL" = "$(which zsh)" ]; then
    echo "ZSH is already the default shell."
else
    echo "ZSH is not the default shell. Changing it now."
    echo "Enter user password to change login shell to zsh"
    chsh -s $(which zsh)
fi

if [ "$ZSH_VERSION" != "" ]; then
    echo "OH_MY_ZSH is already installed."
else
    echo "OH_MY_ZSH isn't installed yet. Installing it now."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Change default sh to zsh
# if sh --version | grep -q 'zsh'; then
#     echo "ZSH is already the default shell."
# else
#     echo "ZSH is not the default shell. Changing it now."
#     echo "Enter user password to change login shell to zsh"
#     chsh -s $(which zsh)
# fi
