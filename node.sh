#!/usr/bin/env bash


if ! command -v nvm &> /dev/null
then
    echo "<the_command> could not be found"
    exit
fi
#
#echo "Check for nvm"
## Install if we don't have it
#if ! command -v nvm &> /dev/null; then
#  echo "Installing nvm..."
#  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#fi
#
#nvm install --lts
#nvm use --lts
#
#npm install http-server@latest @angular/cli@latest -G
