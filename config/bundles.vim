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
Bundle 'kana/vim-smartinput'
Bundle 'ervandew/supertab'
Bundle 'Align'
Bundle 'rstacruz/sparkup.git', {'rtp': 'vim/'}
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'AndrewRadev/switch.vim'
Bundle 'sickill/vim-pasta'

" Utility
Bundle 'bufkill.vim'
Bundle 'ZoomWin'
Bundle 'tpope/vim-rails'
Bundle 'scratch.vim'
Bundle 'sjl/clam.vim'
Bundle 'YankRing.vim'

" Filesystem
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'file-line'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'sjl/vitality.vim'

" Filetypes
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'jQuery'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'

runtime macros/matchit.vim
