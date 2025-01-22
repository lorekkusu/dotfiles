# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# local
export PATH="$HOME/.local/bin:$PATH"

# go
export PATH="$HOME/go/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# nvm
export NVM_DIR="$HOME/.nvm"

# mysql-client
export PATH="/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"

# java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

