#!/bin/sh 
if ! [ -x "$(command -v brew)" ]; then
    echo "Installing brew"

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! [ -x "$(command -v brew)" ]; then
    echo "Failed to install brew";
    exit 1;
fi

declare -a commands=("git" "gpg" "zsh", "zsh-completions", "node", "neofetch", "thefuck", "wget", "docker", "docker-compose", "docker-machine", "xhyve", "docker-machine-driver-xhyve", "docker-machine-nfs", "hub", "ngrok")

for i in "${commands[@]}"
do
    if ! [ -x "$(command -v $i)"]
        brew install $i
    fi
done

if ! [ -x "$(command -v iterm2)"]
    brew cask install iterm2 
fi

brew cask install vmware-fusion

if [ ! -f "~/Library/Fonts/Meslo LG M Regular for Powerline.ttf"]; then 
    wget -O "~/Library/Fonts/Meslo LG M Regular for Powerline.ttf" https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf?raw=true 
fi
