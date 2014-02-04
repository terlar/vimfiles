setlocal keywordprg=ri

let g:ruby_operators = 1
let g:rubycomplete_rails = 1

let b:switch_custom_definitions = [
  \   {
  \     'assert\([\s_]\?\)': 'refute\1',
  \     'refute\([\s_]\?\)': 'assert\1'
  \   }
  \ ]


nmap <buffer> <CR> :Rrunner<CR>
nmap <buffer> <Leader><CR> :.Rrunner<CR>

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
