#!/bin/bash

PLATFORM=$(uname)
echo "Detected platform: $PLATFORM"

if [[ $PLATFORM == 'Darwin' ]]; then
    echo "macOS detected"
    source macos.sh
else
    echo "Unsupported platform"
    exit 1
fi

# Link dotfiles (any)
echo "Linking dotfiles (any)"
ln -svf $PWD/any/.gitconfig $HOME/.gitconfig
