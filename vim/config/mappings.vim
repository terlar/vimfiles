" Toggle paste mode
set pastetoggle=<C-p>

" Disabled mappings
nnoremap Q <Nop>

" Window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-x> <C-w>c
nnoremap <Leader>% <C-w>v<C-w>l
nnoremap <Leader>" <C-w>s<C-w>j
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>
nnoremap <Leader><Down> :<C-u>exe ":resize ".line("$")<CR>

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

" Toggle numbers
nnoremap <Leader># :set number!<CR>

" Search
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>? :noh<CR>
" Center screen when scrolling search results
nnoremap n nzz
nnoremap N Nzz

" Quickfix
nnoremap <Leader>qo :lw<CR>
nnoremap <Leader>qc :lw<CR>:wincmd c<CR>

" Fold/Unfold all
nnoremap <Leader>z :set foldlevel=10000<CR>
nnoremap <Leader>Z :set foldlevel=-10000<CR>

" Go to beginning / end of line
inoremap <C-h> <C-o>^
inoremap <C-l> <C-o>$

" Select pasted text
nnoremap <Leader>v `[v`]

" Clean trailing whitespace
nnoremap <Leader>W :call CleanTrailingSpace()<CR>
" Retab
nnoremap <Leader>R :ret!<CR>
" Auto format
nnoremap === mmgg=G`m^zz
