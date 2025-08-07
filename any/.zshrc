# completion
autoload -Uz compinit
compinit

# lang
export LANG=en_US.UTF-8

# alias
alias j="jump"

# oh-my-zsh
ZSH_THEME="fino" # set by `omz`
plugins=(
  # SYSTEM
  autoenv
  brew
  colored-man-pages
  extract
  z

  # TERMINAL
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting

  # GIT
  git
  git-auto-fetch
  git-commit
  git-extras
  gitignore

  # CLOUD
  gcloud
  kubectl
  helm
  minikube
  skaffold

  # LANG
  flutter
  nvm

  # PATH
  jump
)
source $ZSH/oh-my-zsh.sh

