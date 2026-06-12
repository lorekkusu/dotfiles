# local
export PATH="$HOME/.local/bin:$PATH"

# golang
export PATH="$HOME/go/bin:$PATH"

# platform-specific
[[ -f "$HOME/.zprofile.local" ]] && source "$HOME/.zprofile.local"
