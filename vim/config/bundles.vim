if !isdirectory(expand("~/.vim/bundle/vundle"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let fresh_vundle = 1
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" General
  Bundle 'editorconfig/editorconfig-vim'
  Bundle 'file-line'
  Bundle 'lastpos.vim'
  Bundle 'tpope/vim-eunuch'
  Bundle 'tpope/vim-obsession'
  Bundle 'tpope/vim-dispatch'
  Bundle 'milkypostman/vim-togglelist'

" Theme
  Bundle 'chriskempson/base16-vim'
  colorscheme base16-default
  highlight clear SignColumn

" Buffer
  Bundle 'Soares/butane.vim'
  Bundle 'ZoomWin'
  Bundle 'scratch.vim'

" Navigation
  Bundle 'rking/ag.vim'

  Bundle 'kien/ctrlp.vim'
  Bundle 'mattn/ctrlp-register'
  Bundle 'tacahiroy/ctrlp-funky'
  let g:ctrlp_extensions = ['register', 'funky']
  let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }
  let g:ctrlp_open_multiple_files = '2v'

" Tmux
  Bundle 'benmills/vimux'
  let g:VimuxHeight = '40'
  let g:VimuxOrientation = 'h'
  let g:VimuxUseNearestPane = 1

" Git
  Bundle 'tpope/vim-git'
  Bundle 'tpope/vim-fugitive'
  Bundle 'gregsexton/gitv'
  Bundle 'mattn/webapi-vim'
  Bundle 'mattn/gist-vim'
  Bundle 'airblade/vim-gitgutter'
  let g:gitgutter_enabled = 0

" Edit
  Bundle 'Shougo/neocomplcache'
  let g:neocomplcache_enable_at_startup = 1
  let g:neocomplcache_enable_smart_case = 1

  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-repeat'
  Bundle 'tpope/vim-surround'
  let g:surround_35 = '#{\r}'
  let g:surround_40 = '(\r)'
  let g:surround_91 = '[\r]'
  let g:surround_60 = '<\r>'

  Bundle 'AndrewRadev/switch.vim'
  Bundle 'AndrewRadev/splitjoin.vim'
  let g:splitjoin_normalize_whitespace = 1
  let g:splitjoin_align = 1

  Bundle 'sjl/gundo.vim'
  let g:gundo_preview_bottom = 1

  Bundle 'Align'
  Bundle 'tpope/vim-abolish'
  Bundle 'sjl/clam.vim'

" Filetypes
  Bundle 'scrooloose/syntastic'
  let g:syntastic_check_on_open = 1
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '!'
  let g:syntastic_auto_loc_list = 2
  let g:syntastic_auto_jump = 1

  Bundle 'vim-ruby/vim-ruby'
  Bundle 'tpope/vim-rails'
  Bundle 'tpope/vim-haml'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'jelera/vim-javascript-syntax'
  Bundle 'jQuery'
  Bundle 'othree/html5.vim'
  Bundle 'nono/vim-handlebars'
  Bundle 'Soares/fish.vim'

runtime! macros/matchit.vim

if exists("fresh_vundle")
  BundleInstall
  unlet fresh_vundle
  wincmd c
endif
