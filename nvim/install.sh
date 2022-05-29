#/bin/bash

if [ ! -d ~/.config/nvim ]; then
  echo "linking current nvim to config"
  ln -s $PWD ~/.config/nvim
fi

if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
  echo "install packer.nvim"
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

echo "sync packer"
nvim +PackerSync
