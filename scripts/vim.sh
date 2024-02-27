#!/bin/zsh

# Install all vim plugins.
vim +'PlugInstall --sync' +qa 2>&1 /dev/null
