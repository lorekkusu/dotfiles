# lang
export LANG=en_US.UTF-8

# customs
VSCODE=cursor

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
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

# nvm: defer load until node/npm/npx/pnpm/yarn/corepack is first used
zstyle ':omz:plugins:nvm' lazy yes

source $ZSH/oh-my-zsh.sh
