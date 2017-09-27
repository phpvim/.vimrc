#!/bin/sh
if [ ! $(command -v nvim) ]; then
    echo "Currently, GIT.io/VIM support and only support neovim. but you are not installed it."
    echo "Please install it: https://neovim.org"
    exit
fi
[ ! -f ~/.local/share/nvim/site/autoload/plug.vim ] && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
[ ! -f ~/.fzf/install ] && rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
if [ ! -f ~/.config/nvim/.git/config ] || [ "https://github.com/PHPvim/.vimrc.git" != $(cat ~/.config/nvim/.git/config | grep "url =" | awk '{ print $3 }') ]; then
    [ -f ~/.config/nvim/init.vim ] && mv ~/.config/nvim/ ~/.config/nvim_bak$( jot -r 1 10000 99999)
    [ ! -d ~/.config/nvim ] && mkdir -p ~/.config/nvim
    git clone https://github.com/PHPvim/.vimrc.git ~/.config/nvim/
fi
$(cat ~/.config/nvim/init.vim | grep rtp) && sed -i -e 's/set rtp\+\=.*//g' ~/.config/nvim/init.vim
echo "\nset rtp+=$(which fzf)" >> ~/.config/nvim/init.vim
nvim -c 'PlugInstall'
