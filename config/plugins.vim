" Default
let ruby_operators = 1

" Ack
nnoremap <Leader>a :Ack 
nnoremap <Leader>af :AckFile 
nnoremap <Leader>* :exe ":Ack ".expand("<cword>")<CR>

" Align
nnoremap <Leader>= :Align 
vnoremap <Leader>= :Align 

" CtrlP
nnoremap <Leader><Tab> :CtrlPBuffer<CR>
nnoremap <Leader>e :CtrlP<CR>
nnoremap <Leader>E :CtrlP %:p:h<CR>
nnoremap <Leader>g :CtrlPLine<CR>
nnoremap <Leader>' :CtrlPChange<CR>
nnoremap <Leader>r :CtrlPRTS<CR>

" Gundo
let g:gundo_right = 1
let g:gundo_width = 30
let g:gundo_preview_bottom = 1
let g:gundo_preview_height = 10

nnoremap <Leader>u :silent GundoToggle<CR>

" NERDTree
let g:NERDTreeMinimalUI = 1

au VimEnter * call InitProjectTree()

nnoremap <Leader>n :NERDTreeToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Splitjoin
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1

nnoremap <BS> :SplitjoinJoin<CR>
nnoremap <Leader><BS> :SplitjoinSplit<CR>

" SuperTab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestEnhanced = 1

au FileType * call s:ChainSuperTab()
function s:ChainSuperTab()
  if &omnifunc != ''
    call SuperTabChain(&omnifunc, '<C-P>')
    call SuperTabSetDefaultCompletionType('context')
  endif
endfunction

" Surround
let g:surround_40 = '(\r)'
let g:surround_91 = '[\r]'
let g:surround_60 = '<\r>'

" Switch
nnoremap <Space> :Switch<CR>

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_warnings = 1
let g:syntastic_auto_loc_list = 1

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Turbux
let g:no_turbux_mappings = 1
if exists('$TMUX')
  au FileType ruby map <buffer> <CR> <Plug>SendFocusedTestToTmux
  au FileType ruby map <buffer> <Leader><CR> <Plug>SendTestToTmux
endif

" Vimux
let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
let g:VimuxUseNearestPane = 1

nnoremap <Leader>> :VimuxPromptCommand<CR>
nnoremap <Leader>>> :VimuxRunLastCommand<CR>
" Send selected text to tmux
vmap <C-C><C-C> "vy:call VimuxRunCommand(@v, 0)<CR>
" Send current paragraph to tmux
nmap <C-C><C-C> vip<C-C><C-C><CR>

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-O>:ZoomWin<CR>

" Scratch
nnoremap <Leader>s :Sscratch<CR>

au BufNewFile __Scratch__ call s:ScratchInit()
function s:ScratchInit()
  map <buffer> <CR> V<C-C><C-C>
  map <buffer> <Leader><CR> ggVG<C-C><C-C>
endfunction
