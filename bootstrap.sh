#!/bin/sh

# Remove and backup old files
if [ -e $HOME/.vim ]; then
  cp -r $HOME/.vim $HOME/.vim.old
  rm -rf $HOME/.vim
fi
if [ -e $HOME/.vimrc ]; then
  cp $HOME/.vimrc $HOME/.vimrc.old
  rm -f $HOME/.vimrc
fi

# Steup new vim config
git clone https://github.com/terlar/vimfiles $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc

# Install bundles
vim -c BundleInstall! -c qa -u $HOME/.vim/config/bundles.vim

# Create dir for undo history
mkdir -p $HOME/.vimundo
