#!/bin/zsh

# Create symlinks to dotfiles in the home directory.
dotfiles=(
    ".gitignore"
    ".vimrc"
    ".zshrc"
    ".ssh/config"
)
for f in ${dotfiles[*]}; do
    rm -f $HOME/$f
    # Create a symlink to the file in the home directory.
    ln -sv $(pwd)/$f $HOME/$f
done
