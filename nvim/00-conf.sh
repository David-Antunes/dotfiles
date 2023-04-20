#!/bin/bash

prog=neovim

echo "Attempting to install Neovim!"

if command -v nvim; then
  sudo -u root "$1" install "$prog" -y
else
  echo "Neovim already installed!"
fi

ln -sf "$(pwd)" ~/.config/nvim

exit 0
