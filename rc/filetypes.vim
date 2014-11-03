filetype plugin indent on

runtime! macros/matchit.vim

autocmd BufRead,BufNewFile *.{text,apib} setlocal ft=pandoc
autocmd BufRead,BufNewFile /tmp/pentadactyl.github.com.txt setlocal ft=pandoc
autocmd BufRead,BufNewFile /tmp/pentadactyl.trello.com.txt setlocal ft=pandoc
autocmd BufRead,BufNewFile *.scss setlocal ft=css
autocmd BufRead,BufNewFile fish_funced.* setlocal ft=fish
