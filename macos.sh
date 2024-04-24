#!/bin/bash

# Install Oh My Zsh if not installed
if ! command -v omz &> /dev/null
then
    echo "Installing Oh My Zsh"
    export CHSH=no
    export RUNZSH=no
    export KEEP_ZSHRC=yes
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

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

# Link dotfiles
echo "Linking dotfiles (macos)"
ln -svf $PWD/macos/.zshenv $HOME/.zshenv
ln -svf $PWD/macos/.zprofile $HOME/.zprofile
ln -svf $PWD/macos/.zshrc $HOME/.zshrc
