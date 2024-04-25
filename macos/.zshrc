# alias
alias vim="nvim"

# oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(zsh-syntax-highlighting ssh-agent)
zstyle :omz:plugins:ssh-agent identities id_ed25519
zstyle :omz:plugins:ssh-agent lifetime 24h
source $ZSH/oh-my-zsh.sh

# pyenv
eval "$(pyenv init -)"

# nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
