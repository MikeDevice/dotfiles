#!/usr/bin/env bash

# bash
# append to existing .bashrc
if ! grep -Fxq "source ~/dotfiles/bashrc" ~/.bashrc ; then
  echo "source ~/dotfiles/bashrc" >> ~/.bashrc
fi

# git
ln -sf ./dotfiles/gitconfig ~/.gitconfig

# npm
ln -sf ./dotfiles/npmrc ~/.npmrc
