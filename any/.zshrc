# completion
autoload -Uz compinit
compinit

# lang
export LANG=en_US.UTF-8

# customs
VSCODE=cursor

# oh-my-zsh
ZSH_THEME="fino" # set by `omz`
ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
plugins=(
  # SYSTEM
  extract
  z

  # TERMINAL
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting

  # GIT
  git-commit
  git-extras
  gitignore

  # DEV
  gh
  uv
  nvm
  rust
  golang
  vscode
)
source $ZSH/oh-my-zsh.sh
