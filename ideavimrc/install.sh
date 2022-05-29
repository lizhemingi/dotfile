#/bin/bash

if [ ! -f ~/.ideavimrc ]; then
  echo "linking current ideavimrc to ~/.ideavimrc"
  ln -s $/ideavimrc ~/.ideavimrc
fi
