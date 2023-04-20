#!/bin/bash


install_file="00-conf.sh"
cmd=""
if [ -x "$(command -v apk)" ];       then cmd=apk
elif [ -x "$(command -v apt-get)" ]; then cmd=apt-get
elif [ -x "$(command -v dnf)" ];     then cmd=dnf
elif [ -x "$(command -v zypper)" ];  then cmd=zypper
else echo "FAILED TO INSTALL PACKAGE: Package manager not found.">&2; exit 1; fi

for inst in "$(pwd)"/*; do
  if [ -d "$inst" ]; then
    
    cd "$inst" || exit;
    
    if [ -f $install_file ]; then

      ./$install_file $cmd
    fi

    cd ..

  fi
done

printf "All done!\n"

exit 0
