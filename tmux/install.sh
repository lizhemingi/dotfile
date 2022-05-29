#/bin/bash

if [ ! -f ~/.tmux.conf ]; then
  echo "linking tmux.conf"
  ln -s $PWD/tmux.conf ~/.tmux.conf
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "install tpm"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

export TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins/
echo "install plugins"
~/.tmux/plugins/tpm/bin/install_plugins
bash ~/.tmux/plugins/tmux-mem-cpu-load/tmux-mem-cpu-load.plugin.tmux
