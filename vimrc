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
color molokai

" Window
syntax on
set number
set nowrap
set list listchars=tab:▸\ ,trail:•
set matchpairs+=<:>

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
set statusline=%f
set statusline+=\ %m%r%w
set statusline+=%{fugitive#statusline()}
set statusline+=%=
set statusline+=%y[%vC]
set statusline+=\ %P\ of\ %L
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
set complete=.,w,b,u,t,i

" Remember last location in file
augroup RestoreCursorPos
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g`\"" | endif
augroup end

" Filetypes {
  function! s:SetupWrapping()
    set wrap
    set wrapmargin=2
    set textwidth=72
  endfunction

  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
  " Add json syntax highlighting
  au BufRead,BufNewFile *.json set ft=javascript

  au BufRead,BufNewFile *.{txt,md,markdown,mdown,mkd,mkdn} call s:SetupWrapping()

  " Load plugin and indent settings for the detected filetype
  filetype plugin indent on
" }

let mapleader=','
" Mappings {
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

  " Buffers
  noremap <Tab> :bn<CR>
  noremap <S-Tab> :bp<CR>
  " Close buffer
  nmap <Leader>d <Plug>Kwbd<CR>
  " Close all buffers
  nmap <Leader>D :bufdo <Plug>Kwbd<CR>
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
" }

" Bundles {
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
  nnoremap <silent> <Leader>a :Ack
  nnoremap <silent> <Leader>af :AckFile

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
" }

" Project Tree
au VimEnter * :call InitProjectTree()
function! InitProjectTree()
  if exists(":NERDTree")
    autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
    autocmd FocusGained * call s:UpdateNERDTree()

    " Define the NERDTree-aware aliases
    call DefineCommand("cd", "ChangeDirectory")
    call DefineCommand("touch", "Touch")
    call DefineCommand("rm", "Remove")
    call DefineCommand("e", "Edit")
    call DefineCommand("mkdir", "Mkdir")
    call DefineCommand("mv", "Move")
    cabbrev Edit! e!
  endif
endfunction

" If the parameter is a directory, cd into it
function! s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function! s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction

" Utility functions to create file commands
function! s:CommandCabbr(abbreviation, expansion)
  execute 'cabbrev ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction

function! s:FileCommand(name, ...)
  if exists("a:1")
    let funcname = a:1
  else
    let funcname = a:name
  endif

  execute 'command -nargs=1 -complete=file ' . a:name . ' :call ' . funcname . '(<f-args>)'
endfunction

function! DefineCommand(name, destination)
  call s:FileCommand(a:destination)
  call s:CommandCabbr(a:name, a:destination)
endfunction

" Public NERDTree-aware versions of builtin functions
function! ChangeDirectory(dir, ...)
  execute "cd " . fnameescape(a:dir)
  let stay = exists("a:1") ? a:1 : 1

  NERDTree

  if !stay
    wincmd p
  endif
endfunction

function! Touch(file)
  execute "!touch " . shellescape(a:file, 1)
  call s:UpdateNERDTree()
endfunction

function! Remove(file)
  let current_path = expand("%")
  let removed_path = fnamemodify(a:file, ":p")

  if (current_path == removed_path) && (getbufvar("%", "&modified"))
    echo "You are trying to remove the file you are editing. Please close the buffer first."
  else
    execute "!rm " . shellescape(a:file, 1)
  endif

  call s:UpdateNERDTree()
endfunction

function! Mkdir(file)
  execute "!mkdir " . shellescape(a:file, 1)
  call s:UpdateNERDTree()
endfunction

function! Move(file, newfile)
  execute "!mv " . fnameescape(a:file) . " " . fnameescape(a:newfile)
  call s:UpdateNERDTree()
endfunction

function! Edit(file)
  if exists("b:NERDTreeRoot")
    wincmd p
  endif

  execute "e " . fnameescape(a:file)

ruby << RUBY
  destination = File.expand_path(VIM.evaluate(%{system("dirname " . shellescape(a:file, 1))}))
  pwd         = File.expand_path(Dir.pwd)
  home        = pwd == File.expand_path("~")

  if home || Regexp.new("^" + Regexp.escape(pwd)) !~ destination
    VIM.command(%{call ChangeDirectory(fnamemodify(a:file, ":h"), 0)})
  end
RUBY
endfunction

function! s:Kwbd(kwbdStage)
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) == winnr()
      return
    endif
  endif
  if(a:kwbdStage == 1)
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
      else
        enew
        let l:newBuf = bufnr("%")
        windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
      endif
      execute s:kwbdWinNum . 'wincmd w'
    endif
    if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
      execute "bd! " . s:kwbdBufNum
    endif
    if(!s:buflistedLeft)
      set nobuflisted
    endif
    else
    if(bufnr("%") == s:kwbdBufNum)
      let prevbufvar = bufnr("#")
      if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
        b #
      else
        bn
      endif
    endif
  endif
endfunction
command! Kwbd call <SID>Kwbd(1)
nnoremap <silent> <Plug>Kwbd :<C-u>Kwbd<CR><Esc>

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
