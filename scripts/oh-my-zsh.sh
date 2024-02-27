#!/bin/zsh

CYAN='\033[0;36m'
RESET='\033[0m'
cyan () {
    echo -e "${CYAN}$@${RESET}"
}

# Install oh-my-zsh
if [ -z $ZSH ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install powerlevel10k
P10k_DIR=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
if [ ! -d "$P10k_DIR" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10k_DIR"
fi
source $HOME/.zshrc
p10k configure

