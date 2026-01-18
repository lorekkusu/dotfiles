# completion
autoload -Uz compinit
compinit

# lang
export LANG=en_US.UTF-8

# alias
alias j="jump"

# oh-my-zsh
ZSH_THEME="fino" # set by `omz`
ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
plugins=(
  # SYSTEM
  brew
  aliases
  colorize
  extract
  jump
  z

  # TERMINAL
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting

  # GIT
  git-auto-fetch
  git-commit
  git-extras
  gitignore

  # K8S
  kubectl
  helm
  k9s
  kn
  kind
  minikube

  # CLOUD
  aws
  azure
  gcloud

  # DEV
  gh
  uv
  nvm
  rust
  golang
  docker
  fluxcd
  skaffold
)
source $ZSH/oh-my-zsh.sh
