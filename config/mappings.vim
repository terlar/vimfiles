" Disabled mappings
nnoremap Q <Nop>

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
nnoremap _ :<C-u>exe ":resize ".line("$")<CR>

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

" Marks
nnoremap ' `
nnoremap ` '

" Tags
nnoremap <Leader>] :!ctags -R *<CR><CR>
nnoremap <Space> <C-]>zz
nnoremap <S-Space> <C-T>zz

" Folding
nnoremap <Leader>z :set foldlevel=10000<CR>
nnoremap <Leader>Z :set foldlevel=-10000<CR>

" Go to beginning / end of line
inoremap <C-h> <C-o>^
inoremap <C-l> <C-o>$

" Select pasted text
nnoremap <Leader>v `[v`]

" Remove trailing whitespace
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" Retab
nnoremap <Leader>R :ret!<CR>
" Auto format
nnoremap === mmgg=G`m^zz
