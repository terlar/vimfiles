if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'

" Theme
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'

" Tmux
Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'

" Git
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'mattn/gist-vim'

" Utility
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'ervandew/supertab'
Bundle 'bufkill.vim'
Bundle 'ZoomWin'
Bundle 'tpope/vim-rails'
Bundle 'bingaman/vim-sparkup'

" Filesystem
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'LustyExplorer'
Bundle 'majutsushi/tagbar'

" Syntax
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'jQuery'
Bundle 'nono/vim-handlebars'

runtime macros/matchit.vim
