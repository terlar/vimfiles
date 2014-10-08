let mapleader = "\<Space>"

" Make Y consistent with C and D
nnoremap Y y$

" Toggle paste mode
set pastetoggle=<Leader>P

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

" File
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :Rename<Space>
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" Ag
nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>A :exe ':Ag '.expand('<cword>')<CR>

" CtrlP
nnoremap <Tab><Tab> :CtrlPBuffer<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>f :CtrlPFunky<CR>

nnoremap <Leader>p :CtrlPRegister<CR>
nnoremap <Leader>c :CtrlPChange<CR>
nnoremap <Leader>/ :CtrlPLine<CR>

" Dispatch
nnoremap <CR> :Dispatch<CR>
nnoremap <Leader>db :Dispatch bundle<CR>
nnoremap <Leader>dfg :Dispatch flog %:p:h<CR>
nnoremap <Leader>dfy :Dispatch flay %:p:h<CR>
nnoremap <Leader>dr :Dispatch rails_best_practices<CR>

" Fugitive
nnoremap <Leader>g :Gstatus<CR>

" Gundo
nnoremap <silent> <Leader>u :silent GundoToggle<CR>

" neocomplete
if exists('g:neocomplete#enable_at_startup')
  inoremap <silent> <CR> <C-r>=<SID>CompleteOrCR()<CR>
  function! s:CompleteOrCR()
    return neocomplete#close_popup() . "\<CR>"
  endfunction

  inoremap <expr><Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"

  inoremap <expr><C-h>  neocomplete#smart_close_popup() . "\<C-h>"
  inoremap <expr><BS>   neocomplete#smart_close_popup() . "\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()
end

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

" Tabularize
nnoremap <Leader>= :Tabularize /
vnoremap <Leader>= :Tabularize /
nnoremap <Leader>== :Tabularize /=<CR>
vnoremap <Leader>== :Tabularize /=<CR>
nnoremap <Leader>={ :Tabularize /{<CR>
vnoremap <Leader>={ :Tabularize /{<CR>
nnoremap <Leader>=: :Tabularize /:\zs<CR>
vnoremap <Leader>=: :Tabularize /:\zs<CR>
nnoremap <Leader>=, :Tabularize /,\zs<CR>
vnoremap <Leader>=, :Tabularize /,\zs<CR>
nnoremap <Leader>=> :Tabularize /=><CR>
vnoremap <Leader>=> :Tabularize /=><CR>
nnoremap <Leader>=\| :Tabularize /\|<CR>
vnoremap <Leader>=\| :Tabularize /\|<CR>

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-O>:ZoomWin<CR>
