function! startup#GoBinsInstall(info)
  if a:info.status == 'installed' || a:info.force
    call plug#load('vim-go')
    GoUpdateBinaries
  endif
endfunction
