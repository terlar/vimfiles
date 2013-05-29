if !isdirectory(expand('~/.vim/bundle/vundle'))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let fresh_vundle = 1
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Features
  Bundle 'wikitopian/hardmode'
  Bundle 'tpope/vim-eunuch'
  Bundle 'tpope/vim-obsession'
  Bundle 'tpope/vim-dispatch'
  Bundle 'sjl/clam.vim'
  Bundle 'jpalardy/vim-slime'
  let g:slime_target = 'tmux'
  Bundle 'sjl/gundo.vim'
  let g:gundo_preview_bottom = 1
  Bundle 'tpope/vim-rsi'

" Navigation
  Bundle 'lastpos.vim'
  Bundle 'file-line'

  Bundle 'rking/ag.vim'
  Bundle 'kien/ctrlp.vim'
  Bundle 'mattn/ctrlp-register'
  Bundle 'tacahiroy/ctrlp-funky'
  let g:ctrlp_extensions = ['register', 'funky']
  let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }
  let g:ctrlp_open_multiple_files = '2v'

" Buffer
  Bundle 'Soares/butane.vim'
  Bundle 'ZoomWin'
  Bundle 'scratch.vim'

" QuickFix
  Bundle 'milkypostman/vim-togglelist'
  Bundle 'jceb/vim-hier'

" Git
  Bundle 'tpope/vim-git'
  Bundle 'tpope/vim-fugitive'
  Bundle 'gregsexton/gitv'
  Bundle 'mattn/webapi-vim'
  Bundle 'mattn/gist-vim'

" Edit
  Bundle 'Align'
  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-abolish'
  Bundle 'kana/vim-textobj-indent'
  Bundle 'kana/vim-textobj-user'
  Bundle 'Shougo/neocomplcache'
  let g:neocomplcache_enable_at_startup = 1
  let g:neocomplcache_enable_smart_case = 1
  Bundle 'AndrewRadev/switch.vim'
  let g:switch_custom_definitions = [
    \   {'''\(.\+\)''': '"\1"', '"\(.\+\)"': '''\1'''}
    \ ]
  Bundle 'AndrewRadev/splitjoin.vim'
  let g:splitjoin_normalize_whitespace = 1
  let g:splitjoin_align = 1

" Filetypes
  Bundle 'scrooloose/syntastic'
  let g:syntastic_check_on_open = 1
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '!'
  let g:syntastic_auto_loc_list = 2
  let g:syntastic_auto_jump = 1

  Bundle 'dag/vim-fish'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'slim-template/vim-slim'
  Bundle 'tpope/vim-haml'
  Bundle 'othree/html5.vim'
  Bundle 'wavded/vim-stylus'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'jelera/vim-javascript-syntax'
  Bundle 'jQuery'
  Bundle 'nono/vim-handlebars'

  Bundle 'tpope/vim-rails'
  Bundle 'ecomba/vim-ruby-refactoring'
  Bundle 'rainerborene/vim-reek'
  let g:reek_always_show = 0

runtime! macros/matchit.vim

if exists('fresh_vundle')
  BundleInstall
  unlet fresh_vundle
  wincmd c
endif
