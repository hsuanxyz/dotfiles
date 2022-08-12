#!/usr/bin/env bash

sudo -v

echo "Check for Homebrew"
# Install if we don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# vim
brew reinstall vim
sudo chown -R "$(whoami)" /usr/local/share

brew cleanup

git clone https://github.com/VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"

