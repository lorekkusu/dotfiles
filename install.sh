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
