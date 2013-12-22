#!/bin/bash
# This script sets up a machine with my preferred tools. It is aimed for either
# an Ubuntu or Mac machine. Obviously, it is heavily inspired by ubootstrap
# by rdegges which can be found here:
# https://github.com/rdegges/ubootstrap/blob/master/bootstrap.sh

platform=`uname`
if [[ "$platform" == 'Linux' ]]; then
  sh linux/install_packages.sh
elif [[ "$platform" == 'Darwin' ]]; then
  sh osx/install_packages.sh
fi
