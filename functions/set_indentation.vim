function! SetIndentation(...)
  if a:0 < 1
    let size = 8
  else
    let size = a:1
  endif

  let &l:tabstop = size
  let &l:shiftwidth = size
endfunction
