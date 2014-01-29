" General
set nocompatible
set vb t_vb=
set shortmess=atI " Less interruptive prompts
set viminfo^=!

" Windows
set laststatus=1
set ruler
set noequalalways
set hidden
set switchbuf=useopen
set sidescroll=10
set splitbelow
set splitright

" Searching and patterns
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault
let g:is_posix=1 " Use POSIX

" Displaying text
set nowrap
set fillchars= " No separator chars
set number
set display+=lastline
set scrolloff=1
set sidescrolloff=5
set list

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
    let &fillchars = "vert:\u259a,fold:\u00b7"
  endif
endif

match ErrorMsg '\%>120v.\+'

" Editing text
set backspace=indent,eol,start
set infercase
set complete-=i
set pumheight=10
set showmatch
set matchpairs+=<:>
set nojoinspaces

" Tabs and indenting
set tabstop=2 softtabstop=2 shiftwidth=2
set shiftround
set expandtab
set autoindent
set smarttab

" Files
set encoding=utf-8
set fileformats=unix,dos,mac
set nomodeline
set nowritebackup noswapfile
set autowriteall autoread
if has('persistent_undo')
  set undofile
  if !isdirectory(expand('~/.vimundo'))
    silent !mkdir ~/.vimundo > /dev/null 2>&1
  endif
  set undodir=~/.vimundo
endif

" Command-line
set history=1000
set wildmenu wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*

" Folding
set foldmethod=indent
set foldlevel=1
set foldnestmax=5
set foldtext=FoldText()

" Tags
set tags=./tags;$HOME
set showfulltag

" Speed-up
set timeout
set ttimeoutlen=10
au InsertEnter * set timeoutlen=0
au InsertLeave * set timeoutlen=500
set ttyfast
set ttyscroll=3
set lazyredraw
set synmaxcol=120

" System
set title
set clipboard=unnamed

" Autosave
set updatetime=200
au BufLeave,CursorHold,InsertLeave * silent! wa

syntax on

if !exists('g:netrw_list_hide')
  let g:netrw_list_hide = '^\.,\~$,^tags$'
endif

let base16colorspace=256
colorscheme base16-taiji