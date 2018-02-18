#!/bin/sh

# Install Homebrew & Cask
echo 'Start setup...'
if [ `which brew | wc -l` -eq 0 ]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    xcode-select --install
fi

# Install Python and Ansible
brew update
brew install python ansible
