setlocal foldmethod=marker
setlocal foldmarker={,}

" Sort properties
nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>
