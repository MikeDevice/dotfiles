#!/usr/bin/env bash

# bash
# append to existing .bashrc
if ! grep -Fxq "source ~/dotfiles/bashrc" ~/.bashrc ; then
  echo "source ~/dotfiles/bashrc" >> ~/.bashrc
fi

# git
cat ./dotfiles/gitconfig >> ~/.gitconfig

# npm
cat ./dotfiles/npmrc >> ~/.npmrc
