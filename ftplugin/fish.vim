let &l:makeprg = 'fish'
let b:dispatch = 'fish %'

function! s:fishKeyword()
  execute ':silent !fish -c "man '.expand('<cword>').'"'
  execute ':redraw!'
endfunction

nnoremap <buffer> <silent> K :call <SID>fishKeyword()<CR>
vnoremap <buffer> <silent> K :call <SID>fishKeyword()<CR>
