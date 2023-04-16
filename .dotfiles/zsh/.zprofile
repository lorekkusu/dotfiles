###
### pyenv
###
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

###
### local bin
###
export PATH="/Users/yuhunglo/.local/bin:$PATH"

###
### openjdk
###
export PATH="/usr/local/opt/openjdk/bin:$PATH"

###
### spark
###
export PATH="/Users/yuhunglo/spark/bin:$PATH"
