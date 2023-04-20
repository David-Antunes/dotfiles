#!/bin/bash

echo "Attempting to install bashrc!"

ln -sf "$(pwd)" ~/.config/bash

if ! grep -n -q "source ~/.config/bash/bashrc.extended"; then
  echo "source ~/.config/bash/bashrc.extended" >> ~/.bashrc
else
  echo "Bashrc already installed!"
fi

exit 0
