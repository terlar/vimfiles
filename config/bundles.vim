if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle

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
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'

" Edit
Bundle 'lastpos.vim'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'ervandew/supertab'
Bundle 'Align'
Bundle 'rstacruz/sparkup.git', {'rtp': 'vim/'}

" Utility
Bundle 'bufkill.vim'
Bundle 'ZoomWin'
Bundle 'tpope/vim-rails'

" Filesystem
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'LustyExplorer'
Bundle 'majutsushi/tagbar'
Bundle 'file-line'
Bundle 'gmarik/sudo-gui.vim'

" Syntax
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'jQuery'
Bundle 'nono/vim-handlebars'

runtime macros/matchit.vim