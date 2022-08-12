#!/usr/bin/env bash

echo "Check for Homebrew"
# Install if we don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Check for zsh"
# Install if we don't have it
if test ! "$(which zsh)"; then
  echo "Installing zsh..."
  brew install zsh
  brew cleanup
fi

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
$(which zsh) "${HOME}/.zshrc"

echo "Installing other plugins..."

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
$(which zsh) "${HOME}/.zshrc"
