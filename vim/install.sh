#/bin/bash

if [ ! -f ~/.vimrc ]; then
  echo "linking vimrc"
  ln -s $PWD/vimrc ~/.vimrc
fi

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "install plug.vim"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -f ~/.vim/coc-settings.json ]; then
  echo "linking coc-settings.json"
  ln -s $PWD/coc-settings.json ~/.vim/coc-settings.json
fi

echo "install plug"
vim +PlugInstall
