#!/bin/zsh

CYAN='\033[0;36m'
RESET='\033[0m'
cyan () {
    echo -e "${CYAN}$@${RESET}"
}

# Install brew.
if ! [ -x "$(command -v brew)" ]; then
    cyan "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    cyan "brew already installed"
fi

# Install a bunch of packages.
BREW_PACKAGES=(
    "python3"
    "go"
    "fzf"
    "rg"
)

for p in ${BREW_PACKAGES[@]}; do
    cyan "Installing $p"
    brew install $p
done

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
