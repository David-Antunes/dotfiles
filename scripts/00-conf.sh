#!/bin/bash

echo "Attempting to install scripts folder!"

if [[ ! -d ~/.scripts ]]; then
  workdir=$(pwd)
  cd /tmp
  git clone http://gitea.home/david-antunes/scripts
  cd scripts
  ./install.sh
  cd "$workdir"
else
  echo "Scripts folder already installed!"
fi

exit 0
