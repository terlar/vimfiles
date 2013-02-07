setlocal fdm = marker
setlocal fmr = {,}

" Sort properties
nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>
