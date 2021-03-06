" General {{{
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
set sidescroll=1
set splitbelow
set splitright
set cursorline
" }}}

" Searching and patterns {{{
set ignorecase smartcase
set incsearch
set hlsearch
set gdefault
let g:is_posix=1 " Use POSIX
" }}}

" Displaying text {{{
set wrap
set fillchars= " No separator chars
set number
set display+=lastline
set scrolloff=5
set sidescrolloff=5
set list
set linebreak
set breakindent
set textwidth=0
set colorcolumn=80

if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &fillchars = "vert:\u259a"
  set showbreak=\ ↪\ 
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set showbreak=\ \\\ 
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
set formatoptions+=Mm " Fix-wordwrap for asian languages and joining of lines.
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

set undodir=~/.vimundo
if !isdirectory(expand(&undodir))
  silent execute '!mkdir -p ' . &undodir
endif
set undofile
" }}}

" Command-line {{{
set history=1000
set wildmenu wildmode=longest:full,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=.DS_Store
set wildignore+=*/vendor/bundle/*,*/tmp/*,*/.*-cache/*
" }}}

" Folding {{{
set foldmethod=syntax
let g:vimsyn_folding='af'
let g:tex_fold_enabled=1
let g:xml_syntax_folding = 1
let g:clojure_fold = 1
let ruby_fold = 1
let perl_fold = 1
let perl_fold_blocks = 1
set foldenable
set foldlevel=1
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
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
set lazyredraw
set synmaxcol=200
" }}}

" System {{{
set title
" }}}

filetype plugin indent on
syntax on

if !exists('g:netrw_list_hide')
  let g:netrw_list_hide = '^\.,\~$,^tags$'
endif

" Theme {{{
set background=light
colorscheme PaperColor
" }}}
