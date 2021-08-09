#!/bin/bash

# Create symlinks to dotfiles in the home directory.
dotfiles=(.*)
for f in ${dotfiles[*]}; do
    if [ ${#f} -gt 2 ] && [ "$f" !=  ".git" ]; then
        # Remove the file if it exists. 
        if [ -e ~/$f ]; then
            rm ~/$f
        fi
        # Create a symlink to the file in the home directory.
        ln -sv $(pwd)/$f ~
    fi
done
