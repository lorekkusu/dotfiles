# completion
autoload -Uz compinit
compinit
eval "$(ngrok completion)"

# lang
export LANG=en_US.UTF-8

# alias
alias j="jump"

# oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART="false"
ZSH_TMUX_AUTONAME_SESSION="true"
plugins=(
  brew
  colored-man-pages
  docker
  extract
  gcloud
  git
  git-auto-fetch
  git-commit
  git-extras
  gitignore
  golang
  helm
  jump
  kubectl
  minikube
  nvm
  poetry
  pyenv
  rust
  tmux
  yarn
  z
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting
)
#zstyle :omz:plugins:ssh-agent identities id_ed25519
#zstyle :omz:plugins:ssh-agent lifetime 24h
source $ZSH/oh-my-zsh.sh

