#!/usr/bin/env bash
# - cd into the home directory
# - clone the project
# - cd in the project 
# - show them the option

# set executable option flag
set -e

cd ~
git clone git://github.com/tawrahim/foody.git
cd foody

echo "To start the application simply type  navigate to typed 'cd ~/foody'"
echo " Type 'ruby init.rb' to launch the app" 
echo "To view documentation for the project type 'yard server'"
echo "Hope you find it fancy...ha!"
cd ~/foody
