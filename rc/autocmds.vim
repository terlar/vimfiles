" Equalize window size on resize
autocmd! VimResized * wincmd =

" Auto-open/close quick fix window
autocmd! QuickFixCmdPost [^l]* nested cwindow
autocmd! QuickFixCmdPost    l* nested lwindow

" Run lint checker on file write
autocmd! BufWritePost * Neomake

" Prevent undofile for certain locations
autocmd! BufNewFile,BufRead /dev/shm/* setlocal noundofile

" Automatically leave insert mode after 'updatetime' milliseconds of inaction
autocmd! CursorHoldI * stopinsert
