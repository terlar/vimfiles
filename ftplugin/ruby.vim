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

" Block text objects
xmap <buffer> ab  <Plug>(textobj-rubyblock-a)
omap <buffer> ab  <Plug>(textobj-rubyblock-a)
xmap <buffer> ib  <Plug>(textobj-rubyblock-i)
omap <buffer> ib  <Plug>(textobj-rubyblock-i)

" Evaluator
nmap <buffer> <F5> <Plug>(seeing_is_believing-run)
xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
imap <buffer> <F5> <Plug>(seeing_is_believing-run)

autocmd BufWritePre <buffer> :call CleanTrailingSpace()
