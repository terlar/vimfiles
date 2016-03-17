" Equalize window size on resize
autocmd! VimResized * wincmd =

" Auto-open/close quick fix window
autocmd! QuickFixCmdPost [^l]* nested cwindow
autocmd! QuickFixCmdPost    l* nested lwindow
