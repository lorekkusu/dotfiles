#!/bin/bash

directory_backup=".dotfiles.bak"
directory_dotfiles=".dotfiles"

# if backup directory exists: stop
if [ -d $HOME/$directory_backup ]; then
    echo "Backup directory already exists. Aborting."
    exit 1
fi

mkdir -p $HOME/$directory_backup
for dotfile_source in $(find "$(pwd)/$directory_dotfiles" -type f); do
    filename=$(basename $dotfile_source)
    dotfile_target="$HOME/$filename"
    dotfile_backup="$HOME/$directory_backup/$filename"

    # backup old files
    if [ -f $dotfile_target ]; then
        mv $dotfile_target $dotfile_backup
    else
        touch $dotfile_backup
    fi

    # create symlinks
    ln -sv $dotfile_source $dotfile_target
done




# install zsh
echo ""
echo ""
echo "=================================================="
echo "================Setting up zsh===================="
echo "=================================================="
if [ "$(uname)" == "Darwin" ]; then
    brew install zsh
else
    sudo apt install zsh -y
fi

# install pyenv
echo ""
echo ""
echo "=================================================="
echo "================Setting up pyenv=================="
echo "=================================================="
if [ ! -d "$HOME/.pyenv" ]; then
    unset PYENV_ROOT
    curl -fsSL https://pyenv.run | bash
fi

# install nvm
echo ""
echo ""
echo "=================================================="
echo "==================Setting up nvm=================="
echo "=================================================="
if [ ! -d "$HOME/.nvm" ]; then
    unset NVM_DIR
    export PROFILE="/dev/null"
    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

# install poetry
echo ""
echo ""
echo "=================================================="
echo "================Setting up poetry================="
echo "=================================================="
if [ ! -d "$HOME/.local/share/pypoetry" ]; then
    curl -fsSL https://install.python-poetry.org | python3
fi

# install oh-my-zsh
echo ""
echo ""
echo "=================================================="
echo "================Setting up oh-my-zsh=============="
echo "=================================================="
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    rm -rf ~/.oh-my-zsh
    export CHSH=no
    export RUNZSH=no
    export KEEP_ZSHRC=yes
    curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
fi

# install oh-my-zsh plugins
echo ""
echo ""
echo "=================================================="
echo "================Setting up plugins================"
echo "=================================================="
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# change shell
sudo chsh "$(id -un)" -s $(which zsh) 
