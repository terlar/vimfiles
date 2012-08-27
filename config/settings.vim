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

" Editing
set complete=.,w,b,u,t
set pumheight=10
set backspace=indent,eol,start
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2
set nojoinspaces
set pastetoggle=<Leader>p

" Searching
set hlsearch incsearch
set ignorecase smartcase
set gdefault

" Command-Line
set history=1000
set wildmenu
set wildmode=longest,list:longest
set wildignore+=.git,.svn
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,.*-cache

" Files
set encoding=utf-8
set switchbuf=useopen
set hidden
set autoread autowriteall
set nowritebackup noswapfile
if has('persistent_undo')
  silent !mkdir ~/.vimundo > /dev/null 2>&1
  set undodir=~/.vimundo
  set undofile
end

" Folding
set foldlevel=10000
set foldtext=FoldText()

" Tags
set tags=./tags;$HOME
set showfulltag

" System
set title
set clipboard=unnamed
set vb t_vb=
set mouse=a
set mousehide

if has('gui_running')
  au VimResized * wincmd =
  set guifont=Menlo:h12
  set guioptions=aemg
endif
