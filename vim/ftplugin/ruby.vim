setlocal keywordprg = ri

let g:ruby_operators = 1
let g:rubycomplete_rails = 1

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
