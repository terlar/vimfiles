" Default
let ruby_operators = 1

" NERDTree
let g:NERDTreeIgnore = ['\.pyc$', '\.rbc$', '\~$']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
au VimEnter * :call InitProjectTree()

" LustyExplorer
let g:LustyExplorerSuppressRubyWarning = 1
nnoremap <silent> <Leader><Tab> :LustyBufferExplorer<CR>
nnoremap <silent> <Leader>e :LustyFilesystemExplorer<CR>
nnoremap <silent> <Leader>E :LustyFilesystemExplorerFromHere<CR>
nnoremap <silent> <Leader>g :LustyBufferGrep<CR>

" Gundo
let g:gundo_preview_bottom = 1
let g:gundo_preview_height = 10
let g:gundo_width = 30
nnoremap <Leader>u :silent GundoToggle<CR>

" Ack
nnoremap <Leader>a :Ack
nnoremap <Leader>af :AckFile
nnoremap <Leader>* :exe ":Ack ".expand("<cword>")<CR>

" SuperTab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestEnhanced = 1

" Surround
let g:surround_40 = '(\r)'
let g:surround_91 = '[\r]'
let g:surround_60 = '<\r>'

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_warnings = 1
let g:syntastic_auto_loc_list = 1

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-o>:ZoomWin<CR>

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
let g:VimuxUseNearestPane = 1
nnoremap <Leader>> :VimuxPromptCommand<CR>
nnoremap <Leader>>> :VimuxRunLastCommand<CR>
" Send selected text to tmux
vnoremap <C-C><C-C> "vy:call VimuxRunCommand(@v, 0)<CR>
" Send current paragraph to tmux
nnoremap <C-C><C-C> vip<C-C><C-C><CR>

" Turbux
let g:no_turbux_mappings = 1
if exists('$TMUX')
  au FileType ruby nnoremap <buffer> <CR> <Plug>SendFocusedTestToTmux
  au FileType ruby nnoremap <buffer> <Leader><CR> <Plug>SendTestToTmux
endif

" Switch
nnoremap <Space> :Switch<CR>

" Splitjoin
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1
nnoremap <CR> :SplitjoinSplit<CR>
nnoremap <BS> :SplitjoinJoin<CR>
