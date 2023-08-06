#!/bin/zsh

# zsh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

export PATH=/home/devuser/scripts:$PATH

git config --global user.email "daniel.m.halverson@gmail.com"
git config --global user.name "Daniel M. Halverson"

exec "$@"