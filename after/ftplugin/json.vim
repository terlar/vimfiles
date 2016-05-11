setlocal expandtab
setlocal tabstop=2 shiftwidth=2

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
