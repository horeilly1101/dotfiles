#!/bin/zsh
CYAN='\033[0;36m'
RESET='\033[0m'
cyan () {
    echo -e "${CYAN}$@${RESET}"
}

cyan "Follow the prompts to generate an ssh key."
ssh-keygen -t ed25519 -C "horeilly1101@gmail.com"

cyan "Upload the following key to github:"
cat $HOME/.ssh/id_ed25519.pub
cyan "Press enter to continue."
read -n 1
