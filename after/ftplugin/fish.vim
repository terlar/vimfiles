setlocal keywordprg=:Ref\ fish
setlocal expandtab
call SetIndentation(4)

let &l:makeprg = 'fish'
let b:dispatch = 'fish %'

function! s:Format()
  if !executable('fish_indent')
    return
  endif

  let l:tmpname = tempname()
  call writefile(getline(1, '$'), l:tmpname)

  let out = system('cat ' . l:tmpname . ' | fish_indent')

  if v:shell_error == 0
    let splitted = split(out, '\n')
    call writefile(splitted, l:tmpname)

    " remove undo point caused via BufWritePre
    try | silent undojoin | catch | endtry

    " Replace current file with temp file, then reload buffer
    let old_fileformat = &fileformat
    call rename(l:tmpname, expand('%'))
    silent edit!
    let &fileformat = old_fileformat
    let &syntax = &syntax
  else
    " We didn't use the temp file, so clean up
    call delete(l:tmpname)
  endif
endfunction

autocmd BufWritePre *.fish call s:Format()
