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
set clipboard=unnamed " Use system clipboard
set timeoutlen=300 " Faster mappings
set t_Co=256 " 256 colors
set laststatus=2 " Always show statusline
set mouse=a " Enable mouse support
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

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" Command line
set history=1000
set wildmenu
set wildmode=list:longest
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
set tags=tags;
set complete=.,w,b,t
set showfulltag

if has('gui_running')
  autocmd VimResized * wincmd =

  set guifont=Menlo:h12
  set guioptions=aemg
  set guitablabel=%t
  set mousehide

  if has('mac')
    let macvim_skip_cmd_opt_movement = 1
    let macvim_hig_shift_movement = 1
  endif
endif

" Functions
silent! runtime functions.vim

" Remember last location in file
augroup RestoreCursorPos
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g`\"" | endif
augroup end

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.{txt,md,markdown,mdown,mkd,mkdn} call SetupWrapping()
au BufRead,BufNewFile *.{css,scss} set fdm=marker fmr={,}
filetype plugin indent on

let mapleader=','

" Clear search results
nnoremap <Leader><Space> :noh<CR>
" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" Go to beginning / end of line
imap <C-h> <C-o>^
imap <C-l> <C-o>$

" Auto format
map === mmgg=G`m^zz
" Remove trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" Retab
nnoremap <Leader>R :ret!<CR>

" Move lines
nnoremap <D-j> :m+<CR>==
nnoremap <D-k> :m-2<CR>==
inoremap <D-j> <Esc>:m+<CR>==gi
inoremap <D-k> <Esc>:m-2<CR>==gi
vnoremap <D-j> :m'>+<CR>gv=gv
vnoremap <D-k> :m-2<CR>gv=gv

" Window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>w <C-w>v<C-w>l
nnoremap <Leader>ws <C-w>s<C-w>j
nnoremap <Leader>wc <C-w>c
map <Leader>= <C-w>=
nmap <Silent> <Leader>- :execute ":resize " . line('$')<cr>

" Buffers
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nmap <Leader>d :BD<CR>
nmap <Silent> <Leader>du :BUNDO<CR>
" Close all buffers
nmap <Leader>D :bufdo :BD<CR>
" Switch between last two buffers
nnoremap <Leader><Leader> <C-^>

" Tags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
nnoremap <Space> <C-]>
nnoremap <S-Space> <C-T>

" Folding
nnoremap <Leader>z <Esc>:set foldlevel=10000<CR>
nnoremap <Leader>Z <Esc>:set foldlevel=-10000<CR>

" Marks
nnoremap ' `
nnoremap ` '

" Inserts the path of the currently edited file into a command
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Select pasted text
nnoremap <Leader>v `[v`]

" Toggle paste
nnoremap <Leader>p :setlocal paste!<CR>
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
nnoremap <Leader>u :GundoToggle<CR>

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

" ConqueTerm
let g:ConqueTerm_InsertOnEnter=1
let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_CWInsert=1
let g:ConqueTerm_CloseOnEnd=1
au FileType conque_term setlocal nolist nobuflisted

map <silent> <Leader>s  :ConqueTermVSplit zsh<CR>
map <silent> <Leader>rs :ConqueTermVSplit rails console<CR>
map <silent> <Leader>ss  :ConqueTermSplit zsh<CR>
map <silent> <Leader>rss :ConqueTermSplit rails console<CR>

" ZoomWin
map <silent> <Leader><CR> :ZoomWin<CR>

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'
