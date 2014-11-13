setlocal expandtab
setlocal tabstop=2 softtabstop=2 shiftwidth=2

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
