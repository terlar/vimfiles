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
inoremap <expr><Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-d>"

" Ag
nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>A :exe ':Ag '.expand('<cword>')<CR>

" CtrlP
nnoremap <Tab><Tab> :CtrlPBuffer<CR>
nnoremap <Leader>o :FZF<CR>
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
