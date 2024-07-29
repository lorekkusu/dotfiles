#!/bin/bash

# Install Homebrew if not installed
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Homebrew bundle
echo "Installing Homebrew bundle"
brew bundle install --file=macos/Brewfile

# After Installation
# TiUP
mkdir -p ~/.tiup/bin && curl https://tiup-mirrors.pingcap.com/root.json -o ~/.tiup/bin/root.json
