let mapleader = ' '
let maplocalleader = ' '

" Handle swedish keyboard mistakes
nnoremap Ö :

" Make Y consistent with C and D
nnoremap Y y$

" qq to record, Q to replay
nnoremap Q @q

nnoremap , "*

" Toggle paste mode
set pastetoggle=<F9>

" Make . work in visual mode
xnoremap . :normal .<CR>

" Make @ more usable in visual mode
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" Window
nnoremap <C-x> <C-w>c
nnoremap <Leader>% <C-w>v<C-w>l
nnoremap <Leader>" <C-w>s<C-w>j

" Buffers
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nnoremap <Leader>bd :Bclose<CR>
nnoremap <Leader>bd! :Bclose!<CR>
" Close all buffers
nnoremap <Leader>bD :Breset<CR>
" Switch to previous buffer
nnoremap <Leader><Leader> <C-^>

" Toggle numbers
nnoremap <Leader># :set number!<CR>

" Fold/Unfold all
function! ToggleFold()
  if &l:foldlevel == &l:foldnestmax
    set foldlevel=1
  else
    let &l:foldlevel=&l:foldnestmax
  endif
endfunction

nnoremap <Leader>z :call ToggleFold()<CR>

" Sort lines
nmap <Leader>S vii:sort i<CR>
vnoremap <Leader>S :sort i<CR>

" Clean trailing whitespace
nnoremap <Leader>W :call CleanTrailingSpace()<CR>
" Retab
nnoremap <Leader>R :retab!<CR>
" Auto format
nnoremap === mmgg=G`m^zz

" Quickfix
nnoremap <Up> :cp<CR>zo
nnoremap <Down> :cn<CR>zo

" Tag stack
nnoremap <Left> :pop<CR>
nnoremap <Right> :tag<CR>

" File
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :Rename<Space>
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" Completions
inoremap <expr> <C-F>  &omnifunc == ''
      \ ? ''
      \ : '<C-x><C-o><C-n>'
inoremap <expr><Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-d>"

" Readline emulation
inoremap <C-A> <C-O>^
inoremap <C-X><C-A> <C-A>
cnoremap <C-A> <Home>
cnoremap <C-X><C-A> <C-A>
inoremap <expr> <C-E> col('.')>strlen(getline('.'))?"\<Lt>C-E>":"\<Lt>End>"

noremap! <C-B> <Left>
cnoremap <C-F> <Right>

inoremap <expr> <C-D> col('.')>strlen(getline('.'))?"\<Lt>C-D>":"\<Lt>Del>"
cnoremap <expr> <C-D> getcmdpos()>strlen(getcmdline())?"\<Lt>C-D>":"\<Lt>Del>"

noremap! <expr> <SID>transposition getcmdpos()>strlen(getcmdline())?"\<Left>":getcmdpos()>1?'':"\<Right>"
noremap! <expr> <SID>transpose "\<BS>\<Right>".matchstr(getcmdline()[0 : getcmdpos()-2], '.$')
cmap <script> <C-T> <SID>transposition<SID>transpose

inoremap <Esc>d <C-O>dw
cnoremap <Esc>d -<S-Right><C-W><C-W>

noremap! <Esc><BS> <C-W>
noremap! <Esc>b <S-Left>
noremap! <Esc>f <S-Right>
noremap! <Esc>n <Down>
noremap! <Esc>p <Up>


" Ag
nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>A :exe ':Ag '.expand('<cword>')<CR>

" CtrlP
nnoremap <Tab><Tab> :CtrlPBuffer<CR>
nnoremap <Leader>o :FZF<CR>
nnoremap <Leader>O :FZF %:p:h<CR>
nnoremap <Leader>f :CtrlPFunky<CR>

nnoremap <Leader>p :CtrlPRegister<CR>
nnoremap <Leader>c :CtrlPChange<CR>
nnoremap <Leader>/ :CtrlPLine<CR>

" Dispatch
nnoremap <CR> :silent Dispatch<CR>

" EasyAlign
vmap <Leader>= <Plug>(EasyAlign)
nmap <Leader>= <Plug>(EasyAlign)

" Fugitive
nnoremap <Leader>g :Gstatus<CR>

" Goyo
nnoremap <Leader>G :Goyo<CR>

" Rails
nnoremap <Leader>. :A<CR>

" Scratch
nnoremap <silent> <Leader>s :Sscratch<CR>

autocmd BufEnter __Scratch__ call s:ScratchInit()
function! s:ScratchInit()
  nmap <buffer> <CR> <C-C><C-C>
  vmap <buffer> <CR> <C-C><C-C>
  nmap <buffer> <Leader><CR> ggVG<C-C><C-C>
  map <buffer> <silent> <Leader>s :wincmd c<CR>
endfunction

" Switch
nnoremap - :Switch<CR>

" Undotree
nnoremap <silent> <Leader>u :silent UndotreeToggle<CR>

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-O>:ZoomWin<CR>
