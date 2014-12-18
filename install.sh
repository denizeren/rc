#!/bin/bash

cd $HOME

curl -L http://install.ohmyz.sh | sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/fatih/vim-go.git
git clone git://github.com/tpope/vim-fugitive.git

rm ~/.gitconfig ~/.tmux.conf ~/.vimrc ~/.zshrc

ln -s ~/rc/.gitconfig ~/.gitconfig
ln -s ~/rc/.tmux.conf ~/.tmux.conf
ln -s ~/rc/.vimrc ~/.vimrc
ln -s ~/rc/.zshrc ~/.zshrc
