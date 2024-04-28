# alias

# pyenv
# eval "$(pyenv init -)"

# nvm
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  brew
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-autocomplete
  z
  jump
  git
  gitignore
  git-extras
  git-commit
  git-auto-fetch
  extract
  ssh-agent
  colored-man-pages
  gcloud
  docker
  minikube
  kubectl
  helm
  terraform
  ansible
  poetry
  poetry-env
  pyenv
  rust
  golang
  nvm
  deno
)
zstyle :omz:plugins:ssh-agent identities id_ed25519
zstyle :omz:plugins:ssh-agent lifetime 24h
source $ZSH/oh-my-zsh.sh
