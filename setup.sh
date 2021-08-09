#!/bin/bash

# Create sylinks to dotfiles in the home directory.
dotfiles=(.*)
for f in ${dotfiles[*]}; do
    if [ ${#f} -gt 2 ] && [ "$f" !=  ".git" ]; then
        # Remove the file if it exists. 
        if [ -e ~/$f ]; then
            rm ~/$f
        fi
        # Create a symbolic link to the file in the home directory.
        ln -sv $(pwd)/$f ~
    fi
done
