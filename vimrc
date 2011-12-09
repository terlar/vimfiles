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
set t_Co=256 " 256 colors
set clipboard=unnamed " Use system clipboard
set fillchars = "" " No separator chars
color molokai

" Window
syntax on
set number
set nowrap
set list listchars=tab:▸\ ,trail:•
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

" Status line
set statusline=%f%y
set statusline+=\ %m%r%w
set statusline+=%{fugitive#statusline()}
set statusline+=%=
set statusline+=Line:\ %l/%L[%p%%]
set statusline+=\ Col:\ %v
set statusline+=\ Buf:\ #%n
set laststatus=2

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

" Functions
silent! runtime functions.vim

" Remember last location in file
augroup RestoreCursorPos
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g`\"" | endif
augroup end

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.{txt,md,markdown,mdown,mkd,mkdn} call s:SetupWrapping()
au BufRead,BufNewFile *.{css,scss} set fdm=marker fmr={,}
filetype plugin indent on

let mapleader=','
" Yank to the end of the line
nnoremap Y y$

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
map <Leader>= <C-w>=
nmap <silent> <Leader>- :execute ":resize " . line('$')<cr>

" Buffers
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nmap <Leader>d :BD<CR>
nmap <Leader>du :BUNDO<CR>
" Close all buffers
nmap <Leader>D :bufdo :BD<CR>
" Switch between last two buffers
nnoremap <Leader><Leader> <C-^>

" Tags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>
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

" Clear search results
nnoremap <Leader><Space> :noh<CR>
" Select pasted text
nnoremap <Leader>v V`]

" Toggle paste
nnoremap <Leader>P :setlocal paste!<CR>
" Toggle numbers
nnoremap <Leader># :set number!<CR>

" Write as sudo
cmap w!! w !sudo tee % >/dev/null

" Sort CSS properties
au BufRead,BufNewFile *.{css,scss} nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

" Netrw
let g:netrw_special_syntax=1
let g:netrw_list_hide='^\.[^\.]'

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

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

" LustyExplorer
let g:LustyExplorerSuppressRubyWarning=1
nnoremap <silent> <Leader><Tab> :LustyBufferExplorer<CR>
nnoremap <silent> <Leader>e :LustyFilesystemExplorer<CR>
nnoremap <silent> <Leader>E :LustyFilesystemExplorerFromHere<CR>
nnoremap <silent> <Leader>g :LustyBufferGrep<CR>

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
map <silent> <Leader>n :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_auto_loc_list=1

" Surround
let g:surround_40 = '(\r)'
let g:surround_91 = '[\r]'
let g:surround_60 = '<\r>'

" ZoomWin
map <silent> <Leader><CR> :ZoomWin<CR>

" ConqueTerm
let g:ConqueTerm_FastMode=1
let g:ConqueTerm_Syntax=''
let g:ConqueTerm_InsertOnEnter=1
let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_CWInsert=1
let g:ConqueTerm_CloseOnEnd=1
au FileType conque_term setlocal nolist nobuflisted

map <silent> <Leader>s  :ConqueTermSplit zsh<CR>
map <silent> <Leader>rs :ConqueTermSplit rails console<CR>
map <silent> <Leader>sv  :ConqueTermVSplit zsh<CR>
map <silent> <Leader>rsv :ConqueTermVSplit rails console<CR>

" Project Tree
au VimEnter * :call InitProjectTree()

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
