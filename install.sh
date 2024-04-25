#!/bin/bash

PLATFORM=$(uname)
echo "Detected platform: $PLATFORM"

if [[ $PLATFORM == 'Darwin' ]]; then
    echo "macOS detected"
    source macos.sh
elif [[ $PLATFORM == 'Linux' ]]; then
    echo "Linux detected"
    source linux.sh
else
    echo "Unsupported platform"
    exit 1
fi

# Link dotfiles (any)
echo "Linking dotfiles (any)"
ln -svf $PWD/any/.gitconfig $HOME/.gitconfig

# Link others
echo "Linking others"
ln -svf $PWD/iterm $HOME/.iterm
ln -svf $PWD/nvim $HOME/.config/nvim
