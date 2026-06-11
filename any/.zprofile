# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# local
export PATH="$HOME/.local/bin:$PATH"

# rust
export PATH="$(brew --prefix rustup)/bin:$PATH"

# golang
export PATH="$HOME/go/bin:$PATH"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
