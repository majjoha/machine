#!/bin/bash
# This script sets up a machine with my preferred tools. It is aimed for either
# an Ubuntu or Mac machine. Obviously, it is heavily inspired by ubootstrap
# by rdegges which can be found here:
# https://github.com/rdegges/ubootstrap/blob/master/bootstrap.sh

platform=`uname`
if [[ "$platform" == 'Linux' ]]; then
  bash linux/install_packages.sh
elif [[ "$platform" == 'Darwin' ]]; then
  bash osx/install_packages.sh
fi

# Add dotfiles submodule.
git submodule add https://github.com/majjoha/dotfiles.git

# Install oh-my-zsh.
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell from bash to zsh.
chsh -s /bin/zsh

# Install RVM and get the latest stable Ruby release.
curl -L https://get.rvm.io | bash -s stable --ruby

# Source RVM
source $HOME/.rvm/scripts/rvm

cd ~/ && ~/machine/bin/symlinktree $HOME/dotfiles
