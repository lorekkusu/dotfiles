#!/bin/bash

directory_backup=".dotfiles.bak"

# if backup directory doesn't exist: stop
if [ ! -d $HOME/$directory_backup ]; then
    echo "Backup directory doesn't exist. Aborting."
    exit 1
fi

# restore files
for dotfile_backup in $(find $HOME/$directory_backup -type f); do
    filename=$(basename $dotfile_backup)
    dotfile_target="$HOME/$filename"

    # delete target files
    if [ -f $dotfile_target ]; then
        rm $dotfile_target
    fi

    # restore backup files
    mv -v $dotfile_backup $dotfile_target
done
rm -rf $HOME/$directory_backup




rm -rf $HOME/.pyenv
rm -rf $HOME/.nvm
rm -rf $HOME/.local/share/pypoetry
rm -rf $HOME/.oh-my-zsh
