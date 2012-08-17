" General
set nocompatible
set nomodeline
set lazyredraw
set ttyfast
set timeoutlen=250 " Faster mappings
set shortmess=atI " Less interruptive prompts
set fillchars= " No separator chars
set laststatus=2 " Always show statusline

let g:is_posix=1 " Use POSIX
let mapleader=','
let maplocalleader=';'

syntax on

" Theme
set t_Co=256
color molokai

" Window
set noequalalways
set number
set nowrap
set list listchars=tab:→\ ,trail:•
set matchpairs+=<:>
set foldlevel=10000

" Editing
set complete=.,b,u,t
set backspace=indent,eol,start
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2
set nojoinspaces
set pastetoggle=<C-p>

" Searching
set hlsearch incsearch
set ignorecase smartcase
set gdefault

" Command-Line
set history=1000
set wildmenu
set wildmode=longest,list:longest
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Files
set encoding=utf-8
set hidden
set autoread autowriteall
set nowritebackup noswapfile
if has('persistent_undo')
  set undodir=~/.vimundo
  set undofile
end

" Tags
set tags=./tags;$HOME
set showfulltag

" System
set title
set clipboard=unnamed
set vb t_vb=
set mouse=a
set mousehide

if has('mac')
  set macmeta
endif
if has('gui_running')
  autocmd VimResized * wincmd =
  set guifont=Menlo:h12
  set guioptions=aemg
endif
