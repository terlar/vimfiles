" General
set nocompatible
set vb t_vb=
set shortmess=atI " Less interruptive prompts
set timeoutlen=250 " Faster mappings

" Windows
set laststatus=2 " Always show statusline
set noequalalways
set hidden
set switchbuf=useopen

" Searching and patterns
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault
let g:is_posix=1 " Use POSIX

" Displaying text
set nowrap
set fillchars= " No separator chars
set lazyredraw
set list listchars=tab:→\ ,trail:•
set number

" Editing text
set backspace=indent,eol,start
set complete=.,w,b,u,t
set pumheight=10
set matchpairs+=<:>
set nojoinspaces

" Tabs and indenting
set tabstop=2 softtabstop=2 shiftwidth=2
set shiftround
set expandtab

" Files
set encoding=utf-8
set nomodeline
set nowritebackup noswapfile
set autowriteall autoread
if has('persistent_undo')
  set undofile
  silent !mkdir ~/.vimundo > /dev/null 2>&1
  set undodir=~/.vimundo
end

" Command-line
set history=1000
set wildmenu wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*

" Folding
set foldlevel=10000
set foldtext=FoldText()

" Tags
set tags=./tags;$HOME
set showfulltag

" System
set ttyfast
set title
set clipboard=unnamed

" Theme
set t_Co=256
set background=dark

" GUI
set mouse=a
set mousehide
if has('gui_running')
  au VimResized * wincmd =
  set guifont=Menlo:h12
  set guioptions=aemg
endif

syntax on

let mapleader=','
let maplocalleader=';'
