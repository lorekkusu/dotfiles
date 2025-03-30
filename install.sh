#!/bin/bash

# Install TPM if not installed
if ! command -v tmux &> /dev/null
then
  echo "Installing TPM"
  git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
fi

# Install Oh My Zsh if not installed
if ! command -v omz &> /dev/null
then
    echo "Installing Oh My Zsh"
    export CHSH=no
    export RUNZSH=no
    export KEEP_ZSHRC=yes
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
fi

# Install the specific script based on platform
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
ln -svf $PWD/any/.hyper.js $HOME/.hyper.js
ln -svf $PWD/any/.zshenv $HOME/.zshenv
ln -svf $PWD/any/.zprofile $HOME/.zprofile
ln -svf $PWD/any/.zshrc $HOME/.zshrc
