#!/bin/sh
vim_path="$HOME/.vim"

# Remove and backup old files
if [ -e $vim_path ]; then
  cp -r $vim_path "$vim_path.old"
  rm -rf $vim_path
fi
if [ -e "$HOME/.vimrc" ]; then
  cp "$HOME/.vimrc" "$HOME/.vimrc.old"
  rm -f "$HOME/.vimrc"
fi

# Steup new vim config
git clone https://github.com/terlar/vimfiles $vim_path
ln -s "$vim_path/vimrc" "$HOME/.vimrc"

# Install bundles
vim -c BundleInstall! -c qa -u $vim_path/config/bundles.vim

# Create dir for undo history
mkdir -p "$HOME/.vimundo"
