#!/bin/bash

cd $HOME

curl -L http://install.ohmyz.sh | sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/fatih/vim-go.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/Valloric/YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer --go-completer --ts-completer

rm ~/.gitconfig ~/.tmux.conf ~/.vimrc ~/.zshrc

ln -s ~/rc/.gitconfig ~/.gitconfig
ln -s ~/rc/.tmux.conf ~/.tmux.conf
ln -s ~/rc/.vimrc ~/.vimrc
ln -s ~/rc/.zshrc ~/.zshrc
