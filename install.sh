#!/bin/sh 

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # detect package manager and call relative installer
    echo"Linux dists not supported yet";
elif [[ "$OSTYPE" == "darwin"* ]]; then
    sh ./installs/mac.sh
else 
    echo "distro $OSTYPE is not supported";
    exit 1;
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

node -v 
npm -v

echo "Installing node packages"

npm i -g gtop ctop yarn n loadtest

sh ./setup.sh

# Source the correct packages depending on terminal