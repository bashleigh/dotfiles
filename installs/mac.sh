#!/bin/sh 
if ! [ -x "$(command -v brew)" ]; then
    echo "Installing brew"

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! [ -x "$(command -v brew)" ]; then
    echo "Failed to install brew";
    exit 1;
fi

declare -a comamnds=("git" "gpg" "zsh", "zsh-completions", "node", "neofetch", "thefuck")

for i in "${commands[@]}"
do
    brew install $i
done

brew cask install iterm2 

brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve docker-machine-nfs
