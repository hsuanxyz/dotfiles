#!/usr/bin/env bash

set -e

echo "Check for Homebrew"
# Install if we don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew upgrade

ser +e

# git
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras

# python
brew install python

# java
brew install openjdk

# nvm
brew install nvm

# tool
brew install rename
brew install tree

# dev
brew install --cask iterm2
brew install --cask intellij-idead
brew install --cask google-chrome
brew install --cask firefox
brew install --cask gas-mask

# other
brew install --cask 1password
brew install --cask boom-3d
brew install --cask zoom

# quick look
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo

set -e

brew cleanup