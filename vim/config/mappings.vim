" Make Y consistent with C and D
  nnoremap Y y$

" Toggle paste mode
  set pastetoggle=<Leader>P

" Disabled mappings
  nnoremap Q <Nop>
  inoremap <Del> <Nop>

" Convenience mappings for Swedish keyboard
  nnoremap ä '
  nnoremap Ä `

" Window
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  nnoremap <C-x> <C-w>c
  nnoremap <Leader>% <C-w>v<C-w>l
  nnoremap <Leader>" <C-w>s<C-w>j
  nnoremap <Up> <C-w>5-
  nnoremap <Down> <C-w>5+
  nnoremap <Left> <C-w>5<
  nnoremap <Right> <C-w>5>
  nnoremap <Leader><Down> :<C-u>exe ":resize ".line("$")<CR>

" Buffers
  noremap <Tab> :bn<CR>
  noremap <S-Tab> :bp<CR>
  nnoremap <Leader>d :Bclose<CR>
  nnoremap <Leader>d! :Bclose!<CR>
  " Close all buffers
  nnoremap <Leader>D :Breset<CR>
  " Switch between last two buffers
  nnoremap <Leader><Leader> <C-^>

" Toggle numbers
  nnoremap <Leader># :set number!<CR>

" Search
  " Center screen when scrolling search results
  nnoremap n nzz
  nnoremap N Nzz

" Fold/Unfold all
  nnoremap <Leader>z :set foldlevel=10000<CR>
  nnoremap <Leader>Z :set foldlevel=-10000<CR>

" Go to beginning / end of line
  inoremap <C-h> <C-o>^
  inoremap <C-l> <C-o>$

" Select pasted text
  nnoremap <Leader>v `[v`]

" Clean trailing whitespace
  nnoremap <Leader>W :call CleanTrailingSpace()<CR>
" Retab
  nnoremap <Leader>R :retab!<CR>
" Auto format
  nnoremap === mmgg=G`m^zz

" Netrw
  nnoremap <Leader>n :Explore<CR>

" Command
  cnoremap %% <C-R>=expand('%:h').'/'<CR>


" Ag
  nnoremap <Leader>a :Ag<Space>
  nnoremap <Leader>* :exe ':Ag '.expand('<cword>')<CR>

" Align
  nnoremap <Leader>= :Align<Space>
  vnoremap <Leader>= :Align<Space>

" CtrlP
  nnoremap <Tab><Tab> :CtrlPBuffer<CR>
  nnoremap Q :CtrlPQuickfix<CR>
  nnoremap <Leader>p :CtrlPRegister<CR>
  nnoremap <Leader>' :CtrlPChange<CR>
  nnoremap <Leader>g :CtrlPLine<CR>
  nnoremap <Leader>f :CtrlPFunky<CR>

  " Jump
  nnoremap <Leader>j :CtrlP<CR>
  nnoremap <Leader>e :CtrlPCurFile<CR>
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
  nnoremap <silent> <Leader>u :silent GundoToggle<CR>

" neocomplcache
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
  nnoremap <silent> <BS> :SplitjoinJoin<CR>
  nnoremap <silent> <Del> :SplitjoinSplit<CR>

" Switch
  nnoremap <silent> <Space> :Switch<CR>

" Turbux
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
