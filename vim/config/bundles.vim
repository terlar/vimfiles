if !isdirectory(expand("~/.vim/bundle/vundle"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let fresh_vundle=1
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" General
  Bundle 'file-line'
  Bundle 'lastpos.vim'
  Bundle 'gmarik/sudo-gui.vim'

" Theme
  Bundle 'tomasr/molokai'
  color molokai

  Bundle 'Lokaltog/vim-powerline'
  let g:Powerline_symbols = 'fancy'

" Buffer
  Bundle 'Soares/butane.vim'
  Bundle 'ZoomWin'
  Bundle 'scratch.vim'

" Navigation
  Bundle 'scrooloose/nerdtree'
  let g:NERDTreeMinimalUI = 1

  Bundle 'majutsushi/tagbar'
  Bundle 'milkypostman/vim-togglelist'

" Search
  Bundle 'mileszs/ack.vim'

  Bundle 'kien/ctrlp.vim'
  Bundle 'mattn/ctrlp-register'
  Bundle 'tacahiroy/ctrlp-funky'
  let g:ctrlp_extensions = ['register', 'funky']
  let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }

" Tmux
  Bundle 'benmills/vimux'
  let g:VimuxHeight = '40'
  let g:VimuxOrientation = 'h'
  let g:VimuxUseNearestPane = 1

  Bundle 'jgdavey/vim-turbux'
  let g:no_turbux_mappings = 1


" Git
  Bundle 'tpope/vim-git'
  Bundle 'tpope/vim-fugitive'
  Bundle 'gregsexton/gitv'
  Bundle 'mattn/gist-vim'

" Edit
  Bundle 'Shougo/neocomplcache'
  let g:neocomplcache_enable_at_startup = 1
  let g:neocomplcache_enable_smart_case = 1

  Bundle 'tpope/vim-repeat'
  Bundle 'tpope/vim-surround'
  let g:surround_35  = '#{\r}'
  let g:surround_40 = '(\r)'
  let g:surround_91 = '[\r]'
  let g:surround_60 = '<\r>'

  Bundle 'AndrewRadev/splitjoin.vim'
  let g:splitjoin_normalize_whitespace = 1
  let g:splitjoin_align = 1

  Bundle 'AndrewRadev/switch.vim'
  Bundle 'tpope/vim-endwise'

" Tools
  Bundle 'sjl/gundo.vim'
  let g:gundo_right = 1
  let g:gundo_width = 30
  let g:gundo_preview_bottom = 1
  let g:gundo_preview_height = 10

  Bundle 'Align'
  Bundle 'sjl/clam.vim'

" Filetypes
  Bundle 'scrooloose/syntastic'
  let g:syntastic_check_on_open = 1
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '!'
  let g:syntastic_auto_loc_list = 2
  let g:syntastic_auto_jump = 1

  Bundle 'tpope/vim-haml'
  Bundle 'pangloss/vim-javascript'
  Bundle 'jQuery'
  Bundle 'nono/vim-handlebars'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'tpope/vim-rails'
  Bundle 'aliva/vim-fish'

runtime macros/matchit.vim

if exists("fresh_vundle")
  BundleInstall
  unlet fresh_vundle
  wincmd c
end
