setlocal keywordprg=:Ref\ ri
setlocal expandtab
setlocal tabstop=2 softtabstop=2 shiftwidth=2

let g:ruby_operators = 1

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
nmap <buffer> <Leader><CR> <Plug>(seeing-is-believing-mark-and-run)
xmap <buffer> <Leader><CR> <Plug>(seeing-is-believing-mark-and-run)
nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
imap <buffer> <F4> <Plug>(seeing-is-believing-mark)
nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
imap <buffer> <F5> <Plug>(seeing-is-believing-run)

autocmd BufWritePre <buffer> :call CleanTrailingSpace()

" Highlight custom assertions
syntax match rubyTestMethod "assert_[A-Za-z_]*\s"
syntax match rubyTestMethod "refute_[A-Za-z_]*\s"
