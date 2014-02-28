setlocal keywordprg=ri
setlocal foldmethod=indent

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

xmap <buffer> ab  <Plug>(textobj-rubyblock-a)
omap <buffer> ab  <Plug>(textobj-rubyblock-a)
xmap <buffer> ib  <Plug>(textobj-rubyblock-i)
omap <buffer> ib  <Plug>(textobj-rubyblock-i)

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
