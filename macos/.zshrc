# alias

# oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# pyenv
eval "$(pyenv init -)"

# nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
