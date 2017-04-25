#!/bin/sh

# Install Homebrew & Cask
echo 'Start setup...'
if [ `which brew | wc -l` -eq 0 ]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade --all

# Install Python and Ansible
brew install python ansible
