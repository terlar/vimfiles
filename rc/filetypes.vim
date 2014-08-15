filetype plugin indent on

runtime! macros/matchit.vim

autocmd BufRead,BufNewFile *.{text,apib} setlocal ft=pandoc
autocmd BufRead,BufNewFile *.scss setlocal ft=css
