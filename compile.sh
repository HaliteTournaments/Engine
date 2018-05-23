#!/usr/bin/env bash

set -e

cmake .
make

while true; do
    read -p "Do you wish to delete CMake cache? [y/n] " yn
    case $yn in
        [Yy]* ) rm -r CMakeFiles/ CMakeCache.txt cmake_install.cmake;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
