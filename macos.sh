#!/bin/bash
set -euo pipefail

# Allow sourcing from install.sh (which sets DOTFILES_DIR) or running standalone
DOTFILES_DIR="${DOTFILES_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Set up Homebrew shell environment (supports Apple Silicon and Intel)
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Install Homebrew bundle
echo "Installing Homebrew bundle"
brew bundle install --file="$DOTFILES_DIR/macos/Brewfile"

# Link macOS-specific dotfiles
echo "Linking macOS dotfiles"
ln -svf "$DOTFILES_DIR/macos/.zprofile.local" "$HOME/.zprofile.local"
ln -svf "$DOTFILES_DIR/macos/.gitconfig.local" "$HOME/.gitconfig.local"
mkdir -p "$HOME/.config/ccstatusline"
ln -svf "$DOTFILES_DIR/macos/ccstatusline.settings.json" "$HOME/.config/ccstatusline/settings.json"
