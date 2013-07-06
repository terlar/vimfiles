filetype plugin indent on

runtime! macros/matchit.vim

autocmd BufRead,BufNewFile *.{md,text} setlocal ft=markdown
autocmd BufRead,BufNewFile *.scss setlocal ft=css
