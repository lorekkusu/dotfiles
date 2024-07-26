export LANG=en_US.UTF-8

# alias
alias j="jump"

# oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART="false"
ZSH_TMUX_AUTONAME_SESSION="true"
plugins=(
  ansible
  autoenv
  brew
  colored-man-pages
  deno
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
  poetry-env
  pyenv
  rust
  terraform
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
