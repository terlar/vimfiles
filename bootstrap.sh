#!/bin/sh
cp -r ~/.vim ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null
git clone https://github.com/terlar/vimfiles ~/.vim && cd ~/.vim && vim -c BundleInstall! -c q -c q -u bundles.vim && ln -s ~/.vim/vimrc ~/.vimrc && mkdir -p ~/.vimundo
