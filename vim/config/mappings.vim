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
  nnoremap <Leader>bd :Bclose<CR>
  nnoremap <Leader>bd! :Bclose!<CR>
  " Close all buffers
  nnoremap <Leader>bD :Breset<CR>
  " Switch to previous buffer
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

" Clean trailing whitespace
  nnoremap <Leader>W :call CleanTrailingSpace()<CR>
" Retab
  nnoremap <Leader>R :retab!<CR>
" Auto format
  nnoremap === mmgg=G`m^zz

" Quickfix
  nnoremap <LocalLeader><LocalLeader> :cc<CR>
  nnoremap <LocalLeader>j :cp<CR>
  nnoremap <LocalLeader>k :cn<CR>

" File
  nnoremap <Leader>n :Rename<Space>
  cnoremap %% <C-R>=expand('%:h').'/'<CR>

" Command
  cnoremap <M-b>      <S-Left>
  cnoremap <M-f>      <S-Right>
  cnoremap <M-d>      <S-Right><C-w>
  cnoremap <Esc>b     <S-Left>
  cnoremap <Esc>f     <S-Right>
  cnoremap <Esc>d     <S-Right><C-w>
  cnoremap <Esc><BS>  <C-w>


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
  nnoremap <Leader>c :CtrlPChange<CR>
  nnoremap <Leader>/ :CtrlPLine<CR>
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
  nnoremap <Leader>jl :CtrlP lib<CR>
  nnoremap <Leader>js :CtrlP spec<CR>

" Dispatch
  nnoremap <Leader>db :Dispatch bundle<CR>
  nnoremap <Leader>dfg :Dispatch flog %:p:h<CR>
  nnoremap <Leader>dfy :Dispatch flay %:p:h<CR>
  nnoremap <Leader>dr :Dispatch rails_best_practices<CR>

  autocmd! CmdwinEnter * unmap <buffer> <CR>
  autocmd! CmdwinLeave * call s:MapCR()
  function! s:MapCR()
    if mapcheck('<CR>', 'n') == ''
      nmap <buffer> <CR> :Dispatch<CR>
    endif
  endfunction
  call s:MapCR()

" Gundo
  nnoremap <silent> <Leader>u :silent GundoToggle<CR>

" Hard Mode
  nnoremap <Leader>h <Esc>:call ToggleHardMode()<CR>

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

" Rails
  nnoremap <Leader>. :A<CR>
  autocmd FileType ruby nmap <buffer> <CR> :.Rrunner<CR>
  autocmd FileType ruby nmap <buffer> <Leader><CR> :Rrunner<CR>

" Scratch
  nnoremap <silent> <Leader>s :Sscratch<CR>

  autocmd BufEnter __Scratch__ call s:ScratchInit()
  function! s:ScratchInit()
    nmap <buffer> <CR> <C-C><C-C>
    vmap <buffer> <CR> <C-C><C-C>
    nmap <buffer> <Leader><CR> ggVG<C-C><C-C>
    map <buffer> <silent> <Leader>s :wincmd c<CR>
  endfunction

" Splitjoin
  nnoremap <silent> <BS> :SplitjoinJoin<CR>
  nnoremap <silent> <Del> :SplitjoinSplit<CR>

" Switch
  nnoremap <silent> <Space> :Switch<CR>

" ZoomWin
  nnoremap <C-_> :ZoomWin<CR>
  vnoremap <C-_> <C-C>:ZoomWin<CR>gv
  inoremap <C-_> <C-O>:ZoomWin<CR>
