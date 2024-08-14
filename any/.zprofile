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

# Wasm
# export WASMEDGE_DIR=$(brew --prefix wasmedge)

# WASI SDK
# export WASI_SDK_PATH="$HOME/sdk/wasi-sdk-22.0"
# export CC="${WASI_SDK_PATH}/bin/clang --sysroot=${WASI_SDK_PATH}/share/wasi-sysroot"

# mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

