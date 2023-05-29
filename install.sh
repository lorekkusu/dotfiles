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
if [ "$(uname)" == "Darwin" ]; then
    brew install zsh
else
    sudo apt install zsh
fi

# install pyenv
curl https://pyenv.run | bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended

# install oh-my-zsh plugins
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# change shell
sudo chsh -s /bin/zsh $USER
zsh
