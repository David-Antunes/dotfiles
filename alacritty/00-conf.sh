#!/bin/bash

prog=alacritty

echo "Attempting to install Alacritty!"

if command -v alacritty; then
  sudo -u root "$1" install "$prog" -y
else 
  echo "Alacritty already installed!"
fi

ln -sf "$(pwd)" ~/.config/alacritty

exit 0
