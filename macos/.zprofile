# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# go
export PATH="$HOME/go/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# nvm
export NVM_DIR="$HOME/.nvm"
