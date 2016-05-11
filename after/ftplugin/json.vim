setlocal expandtab
call SetIndentation(2)

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
