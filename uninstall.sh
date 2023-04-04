#!/bin/bash

# remove symlinks
for DIR in $(ls -A .dotfiles); do
    for FILE in $(ls -A .dotfiles/$DIR); do
        if [ -L ~/$FILE ]; then
            rm ~/$FILE
        fi

        # restore old files
        if [ -f ~/$FILE.bak ]; then
            mv ~/$FILE.bak ~/$FILE
        fi
    done
done
