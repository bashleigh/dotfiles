#!/bin/sh 
if ! [ -x "$(command -v brew)" ]; then
    echo "Installing brew"

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! [ -x "$(command -v brew)" ]; then
    echo "Failed to install brew";
    exit 1;
fi

declare -a commands=("git" "gpg" "node" "neofetch" "thefuck" "wget" "docker" "docker-compose" "docker-machine" "xhyve" "docker-machine-driver-xhyve" "docker-machine-nfs" "hub" "ngrok")

for i in "${commands[@]}"
do
    if ! [ -x "$(command -v $i)" ]; then
        brew install $i;
    fi
done

if ! [ -x "$(command -v zsh)" ]; then
    brew install zsh zsh-completions
fi

brew cask install vmware-fusion iterm2

if [ ! -f "~/Library/Fonts/Meslo LG M Regular for Powerline.ttf" ]; then 
    wget https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf?raw=true 
    mv Meslo\ LG\ M\ Regular\ for\ Powerline.ttf\?raw=true ~/Library/Fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf
fi
