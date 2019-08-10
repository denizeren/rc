#!/bin/bash

cd $HOME

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/youcompleteme
YCM_CORES=1 python3 install.py --clang-completer --go-completer --ts-completer
cd $HOME

rm ~/.gitconfig ~/.tmux.conf ~/.vimrc ~/.zshrc

ln -s ~/rc/.gitconfig ~/.gitconfig
ln -s ~/rc/.tmux.conf ~/.tmux.conf
ln -s ~/rc/.vimrc ~/.vimrc
