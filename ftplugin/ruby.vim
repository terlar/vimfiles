setlocal keywordprg=ri

let g:ruby_operators = 1
let g:rubycomplete_rails = 1

nmap <buffer> <CR> :Rrunner<CR>
nmap <buffer> <Leader><CR> :.Rrunner<CR>

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
