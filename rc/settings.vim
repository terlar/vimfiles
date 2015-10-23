" General {{{
set nocompatible
set vb t_vb=
set shortmess=aIT " Less interruptive prompts
set viminfo^=!
" }}}

" Windows {{{
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P"
set laststatus=2
set ruler
set noequalalways
set hidden
set switchbuf=useopen
set sidescroll=10
set splitbelow
set splitright
" }}}

" Searching and patterns {{{
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault
let g:is_posix=1 " Use POSIX
" }}}

" Displaying text {{{
set nowrap
set fillchars= " No separator chars
set number
set display+=lastline
set scrolloff=10
set sidescrolloff=5
set list
set linebreak
set textwidth=0

if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &fillchars = "vert:\u259a,fold:\u00b7"
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
" }}}

" Editing text {{{
set backspace=indent,eol,start
set infercase
set complete-=i
set pumheight=10
set showmatch
set matchpairs+=<:>
set nojoinspaces
set virtualedit=block
set formatoptions+=j " Join comments
set formatoptions+=t " Automatically wrap text
set nostartofline
set spelllang=en,sv
" }}}

" Tabs and indenting {{{
set noexpandtab smarttab
set copyindent
set preserveindent
set tabstop=8 softtabstop=0
set shiftwidth=8
set autoindent
set smartindent
" }}}

" Files {{{
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
" }}}

" Command-line {{{
set history=1000
set wildmenu wildmode=longest,list:longest
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*
" }}}

" Folding {{{
set foldmethod=indent
set foldlevelstart=99
set foldtext=FoldText()
" }}}

" Tags {{{
set tags=./tags;$HOME
set showfulltag
" }}}

" Speed-up {{{
set timeoutlen=300
set ttimeout ttimeoutlen=50
au InsertEnter * set timeoutlen=0
au InsertLeave * set timeoutlen=300
set ttyfast
set lazyredraw
set synmaxcol=200
" }}}

" System {{{
set title
" }}}

" Autosave {{{
set updatetime=1000
au BufLeave,CursorHold,InsertLeave * silent! wa
" }}}

filetype plugin indent on
syntax on

if !exists('g:netrw_list_hide')
  let g:netrw_list_hide = '^\.,\~$,^tags$'
endif

" Theme {{{
colorscheme taiji

match Error /\%81v.*/
" }}}
