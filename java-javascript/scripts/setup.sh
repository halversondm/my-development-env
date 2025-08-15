#!/bin/zsh

git config --global user.email "daniel.m.halverson@gmail.com"
git config --global user.name "Daniel M. Halverson"
git config --global core.autocrlf input

if [ ! -d "$HOME/.oh-my-zsh/" ]; then
  zsh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

exec "$@"