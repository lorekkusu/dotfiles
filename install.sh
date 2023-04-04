#!/bin/bash

# backup old files
for DIR in $(ls -A .dotfiles); do
    for FILE in $(ls -A .dotfiles/$DIR); do
        if [ -f ~/$FILE ]; then
            mv ~/$FILE ~/$FILE.bak
        fi

        # create symlinks
        ln -sv "$(pwd)/.dotfiles/$DIR/$FILE" ~/$FILE
    done
done
