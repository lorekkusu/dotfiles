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

# Link preferences
mkdir -p $HOME/.iterm
ln -svf $PWD/iterm/com.googlecode.iterm2.plist $HOME/.iterm/com.googlecode.iterm2.plist
