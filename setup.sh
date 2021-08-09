#!/bin/bash

# Create sylinks to dotfiles in the home directory.
dotfiles=(.*)
for f in ${dotfiles[*]}; do
    if [ ${#f} -gt 2 ] && [ "$f" !=  ".git" ]; then
        rm ~/$f
        ln -sv $(pwd)/$f ~
    fi
done
