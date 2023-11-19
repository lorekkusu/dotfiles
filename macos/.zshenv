# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# go
export PATH="$HOME/go/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"

# fvm
export FVM_HOME="$HOME/fvm"
export PATH="$FVM_HOME/default/bin:$PATH"

# firebase
export PATH="$HOME/.pub-cache/bin:$PATH"

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
