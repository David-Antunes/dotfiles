#!/bin/bash

echo "Attempting to install bash-alias!"

if command -v bash-alias.sh; then
  workdir=$(pwd)
  cd /tmp
  git clone http://gitea.home/david-antunes/bash-alias
  cd bash-alias
  ./install.sh -i
  cd "$workdir"

else
  echo "Bash-alias already installed!"
fi

ln -sf "$(pwd)"/alias ~/.config/bash-alias/alias

exit 0
