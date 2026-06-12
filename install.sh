#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(dirname "${BASH_SOURCE[0]}")"

# Install platform-specific packages first
PLATFORM=$(uname)
echo "Detected platform: $PLATFORM"
if [[ $PLATFORM == 'Darwin' ]]; then
    echo "macOS detected"
    source "$DOTFILES_DIR/macos.sh"
elif [[ $PLATFORM == 'Linux' ]]; then
    echo "Linux detected"
    source "$DOTFILES_DIR/linux.sh"
else
    echo "Unsupported platform"
    exit 1
fi


# Install Oh My Zsh if not installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh"
    export CHSH=no
    export RUNZSH=no
    export KEEP_ZSHRC=yes
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
    git clone https://github.com/marlonrichert/zsh-autocomplete.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete"
fi

# Link dotfiles (any)
echo "Linking dotfiles (any)"
ln -svf "$DOTFILES_DIR/any/.gitconfig" "$HOME/.gitconfig"
ln -svf "$DOTFILES_DIR/any/.zshenv" "$HOME/.zshenv"
ln -svf "$DOTFILES_DIR/any/.zprofile" "$HOME/.zprofile"
ln -svf "$DOTFILES_DIR/any/.zshrc" "$HOME/.zshrc"
