if !isdirectory(expand('~/.vim/bundle/vundle'))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let fresh_vundle = 1
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Features
Bundle 'Valloric/YouCompleteMe'
Bundle 'wikitopian/hardmode'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'sjl/gundo.vim'
let g:gundo_preview_bottom = 1
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'godlygeek/tabular'
Bundle 'file-line'
Bundle 'lastpos.vim'
Bundle 'kana/vim-vspec'

" Tmux
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'jpalardy/vim-slime'
let g:slime_target = 'tmux'

" Git
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" QuickFix
Bundle 'milkypostman/vim-togglelist'
Bundle 'jceb/vim-hier'

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

" Filetypes
Bundle 'tpope/vim-git'
Bundle 'dag/vim-fish'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'elixir-lang/vim-elixir'
Bundle 'jimenezrick/vimerl'
Bundle 'dag/vim2hs'
Bundle 'jnwhiteh/vim-golang'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-markdown'
Bundle 'othree/html5.vim'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jQuery'
Bundle 'nono/vim-handlebars'
Bundle 'wavded/vim-stylus'
Bundle 'sunaku/vim-ruby-minitest'

" Syntax
Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 2
let g:syntastic_auto_jump = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
Bundle 'AndrewRadev/switch.vim'
Bundle 'AndrewRadev/splitjoin.vim'
let g:splitjoin_normalize_whitespace = 1
let g:splitjoin_align = 1
Bundle 'kana/vim-textobj-indent'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-endwise'

if exists('fresh_vundle')
  BundleInstall
  unlet fresh_vundle
  wincmd c
endif