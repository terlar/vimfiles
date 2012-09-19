" Theme
color molokai

" Ack
nnoremap <Leader>a :Ack<Space>
nnoremap <Leader>* :exe ':Ack '.expand('<cword>')<CR>

" Align
nnoremap <Leader>= :Align<Space>
vnoremap <Leader>= :Align<Space>

" CtrlP
let g:ctrlp_extensions = ['register', 'funky']
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }

nnoremap <Tab><Tab> :CtrlPBuffer<CR>
nnoremap Q :CtrlPQuickfix<CR>
nnoremap <Leader>p :CtrlPRegister<CR>

" Find
nnoremap <Leader>fl :CtrlPLine<CR>
nnoremap <Leader>fc :CtrlPChange<CR>
nnoremap <Leader>ff :CtrlPFunky<CR>

" Jump
nnoremap <Leader>j :CtrlP<CR>
nnoremap <Leader>J :CtrlPCurFile<CR>
nnoremap <Leader>jr :CtrlPRTS<CR>
" Rails project
nnoremap <Leader>jm :CtrlP app/models<CR>
nnoremap <Leader>jv :CtrlP app/views<CR>
nnoremap <Leader>jc :CtrlP app/controllers<CR>
nnoremap <Leader>jh :CtrlP app/helpers<CR>
nnoremap <Leader>ja :CtrlP app/assets<CR>
nnoremap <Leader>jaj :CtrlP app/assets/javascripts<CR>
nnoremap <Leader>jas :CtrlP app/assets/stylesheets<CR>
nnoremap <Leader>jl :CtrlP lib<CR>
nnoremap <Leader>jp :CtrlP public<CR>
nnoremap <Leader>js :CtrlP spec<CR>
nnoremap <Leader>jd :CtrlP db<CR>
nnoremap <Leader>jC :CtrlP config<CR>
nnoremap <Leader>jV :CtrlP vendor<CR>

" Gundo
let g:gundo_right = 1
let g:gundo_width = 30
let g:gundo_preview_bottom = 1
let g:gundo_preview_height = 10

nnoremap <silent> <Leader>u :silent GundoToggle<CR>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction

inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

" NERDTree
let g:NERDTreeMinimalUI = 1

au VimEnter * call InitProjectTree()

nnoremap <silent> <Leader>n :NERDTreeToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Scratch
nnoremap <silent> <Leader>s :Sscratch<CR>

au BufNewFile __Scratch__ call s:ScratchInit()
function! s:ScratchInit()
  nmap <buffer> <CR> V<C-C><C-C>
  vmap <buffer> <CR> <C-C><C-C>
  nmap <buffer> <Leader><CR> ggVG<C-C><C-C>

  map <buffer> <silent> <Leader>s :wincmd c<CR>
endfunction

" Splitjoin
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1

nnoremap <silent> <BS> :SplitjoinJoin<CR>
nnoremap <silent> <Del> :SplitjoinSplit<CR>

" Surround
let g:surround_35  = '#{\r}'
let g:surround_40 = '(\r)'
let g:surround_91 = '[\r]'
let g:surround_60 = '<\r>'

" Switch
nnoremap <silent> <Space> :Switch<CR>

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
 " Auto-close when errors are fixed
let g:syntastic_auto_loc_list = 2
let g:syntastic_auto_jump = 1

" Tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>

" Turbux
let g:no_turbux_mappings = 1

if exists('$TMUX')
  au FileType ruby call s:MapSendTestToTmux()
  function! s:MapSendTestToTmux()
    if &buftype == 'nofile'
      return
    endif

    map <buffer> <CR> <Plug>SendFocusedTestToTmux
    map <buffer> <Leader><CR> <Plug>SendTestToTmux
  endfunction
endif

" Vimux
let g:VimuxHeight = '40'
let g:VimuxOrientation = 'h'
let g:VimuxUseNearestPane = 1

nnoremap <Leader>> :VimuxPromptCommand<CR>
nnoremap <Leader>>> :VimuxRunLastCommand<CR>
" Send selected text to tmux
vmap <silent> <C-C><C-C> "vy:call VimuxRunCommand(@v, 0)<CR>
" Send current paragraph to tmux
nmap <silent> <C-C><C-C> vip<C-C><C-C><CR>

" ZoomWin
nnoremap <C-_> :ZoomWin<CR>
vnoremap <C-_> <C-C>:ZoomWin<CR>gv
inoremap <C-_> <C-O>:ZoomWin<CR>
