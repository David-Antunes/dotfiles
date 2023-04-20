#!/bin/bash

prog=tmux

echo "Attempting to install Tmux!"

if command -v tmux; then
  sudo -u root "$1" install "$prog" -y
else
  echo "Tmux already installed!"
fi

ln -sf "$(pwd)"/tmux.conf ~/.tmux.conf

exit 0
