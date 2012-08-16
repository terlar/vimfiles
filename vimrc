" Bundles
silent! runtime bundles.vim

" General
set nocompatible
set nomodeline
set lazyredraw
set ttyfast
set noequalalways

set title " Set terminal title
set shortmess=atI " Less interruptive prompts
set vb t_vb= " No beep or flash
set fillchars= " No separator chars
set clipboard+=unnamed " Use system clipboard
set pastetoggle=<C-p> " Toggle paste mode
set timeoutlen=250 " Faster mappings
set t_Co=256 " 256 colors
set laststatus=2 " Always show statusline
set mouse=a " Enable mouse support
set mousehide " Hide mouse on input
let g:is_posix=1 " Use POSIX
color molokai

" Window
syntax on
set number
set nowrap
set list listchars=tab:→\ ,trail:•
set matchpairs+=<:>
set foldlevel=10000

" Editing
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start
set complete=.,b,u,t

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" Command line
set history=1000
set wildmenu
set wildmode=longest,list:longest
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" File
set hidden
set autowriteall
set autoread
set undofile
set undodir=~/.vimundo
set nowritebackup
set noswapfile

" Tags
set tags=./tags;$HOME
set showfulltag

if has('mac')
  set macmeta
endif
if has('gui_running')
  autocmd VimResized * wincmd =
  set guifont=Menlo:h12
  set guioptions=aemg
endif

" Functions
silent! runtime functions.vim

" Remember last location in file
augroup RestoreCursorPos
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g`\"" | endif
augroup end

" Filetype config
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.{txt,md,markdown,mdown,mkd,mkdn} call SetupWrapping()
au BufRead,BufNewFile *.{css,scss} set fdm=marker fmr={,}
filetype plugin indent on

" Mappings
let mapleader=','

" Window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>% <C-w>v<C-w>l
nnoremap <Leader>" <C-w>s<C-w>j
nnoremap <Leader>x <C-w>c
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap <Leader>- :<C-u>exe ":resize ".line("$")<CR>

" Buffers
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nnoremap <Leader>d :silent! BD<CR>
nnoremap <Leader>d! :BD!<CR>
nnoremap <Leader>du :silent! BUNDO<CR>
" Close all buffers
nnoremap <Leader>D :bufdo :BD<CR>
" Switch between last two buffers
nnoremap <Leader><Leader> <C-^>

" Clear search results
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>? :noh<CR>
" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" Go to beginning / end of line
imap <C-h> <C-o>^
imap <C-l> <C-o>$

" Split line(opposite to S-J joining line)
nnoremap <C-J> gEa<CR><Esc>ew

" Marks
nnoremap ' `
nnoremap ` '

" Auto format
map === mmgg=G`m^zz
" Remove trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" Retab
nnoremap <Leader>R :ret!<CR>

" Tags
map <Leader>rt :!ctags -R *<CR><CR>
nnoremap <Space> <C-]>zz
nnoremap <S-Space> <C-T>zz

" Folding
nnoremap <Leader>z <Esc>:set foldlevel=10000<CR>
nnoremap <Leader>Z <Esc>:set foldlevel=-10000<CR>

" Inserts the path of the currently edited file into a command
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Select pasted text
nnoremap <Leader>v `[v`]

" Toggle numbers
nnoremap <Leader># :set number!<CR>

" Write as sudo
cmap w!! w !sudo tee % >/dev/null

" Sort CSS properties
au BufRead,BufNewFile *.{css,scss} nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

" NERDTree
let g:NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=1
map <silent> <Leader>n :NERDTreeToggle<CR>
au VimEnter * :call InitProjectTree()

" LustyExplorer
let g:LustyExplorerSuppressRubyWarning=1
nnoremap <silent> <Leader><Tab> :LustyBufferExplorer<CR>
nnoremap <silent> <Leader>e :LustyFilesystemExplorer<CR>
nnoremap <silent> <Leader>E :LustyFilesystemExplorerFromHere<CR>
nnoremap <silent> <Leader>g :LustyBufferGrep<CR>

" Gundo
let g:gundo_preview_bottom=1
let g:gundo_preview_height=10
let g:gundo_width=30
nnoremap <Leader>u :silent GundoToggle<CR>

" Ack
nnoremap <Leader>a :Ack
nnoremap <Leader>af :AckFile

" SuperTab
let g:SuperTabDefaultCompletionType='context'
let g:SuperTabLongestEnhanced=1

" Surround
let g:surround_40 = '(\r)'
let g:surround_91 = '[\r]'
let g:surround_60 = '<\r>'

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_auto_loc_list=1

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-o>:ZoomWin<CR>

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
let g:VimuxUseNearestPane = 1
map <Leader>> :VimuxPromptCommand<CR>
map <Leader>>> :VimuxRunLastCommand<CR>
" Send selected text to tmux
vmap <C-C><C-C> "vy:call VimuxRunCommand(@v, 0)<CR>
" Send current paragraph to tmux
nmap <C-C><C-C> vip<C-C><C-C><CR>

" Turbux
let g:no_turbux_mappings = 1
if exists('$TMUX')
  autocmd FileType ruby map <buffer> <CR> <Plug>SendFocusedTestToTmux
  autocmd FileType ruby map <buffer> <Leader><CR> <Plug>SendTestToTmux
endif
