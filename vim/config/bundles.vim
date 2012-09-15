if !isdirectory(expand("~/.vim/bundle/vundle"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let fresh_vundle=1
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" General
Bundle 'file-line'
Bundle 'lastpos.vim'
Bundle 'sjl/vitality.vim'
Bundle 'gmarik/sudo-gui.vim'

" Theme
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'

" Buffer
Bundle 'bufkill.vim'
Bundle 'ZoomWin'
Bundle 'scratch.vim'

" Navigation
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'

" Search
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/ctrlp-register'
Bundle 'tacahiroy/ctrlp-funky'

" Tmux
Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'

" Git
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'

" Edit
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'AndrewRadev/switch.vim'

" Tools
Bundle 'sjl/gundo.vim'
Bundle 'Align'
Bundle 'sjl/clam.vim'

" Filetypes
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'jQuery'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-rails'

runtime macros/matchit.vim

if exists("fresh_vundle")
  BundleInstall
  unlet fresh_vundle
  wincmd c
end
