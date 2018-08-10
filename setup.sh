#!/bin/bash
BASEDIR=$(dirname $0)

## check if source is required
ln -sf ${BASEDIR}/home/aliases ~/.aliases
ln -sf ${BASEDIR}/home/bash_profile ~/.bash_profile
ln -sf ${BASEDIR}/home/zshrc ~/.zshrc
