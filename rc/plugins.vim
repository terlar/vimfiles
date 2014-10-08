if !isdirectory(expand('~/.vim/bundle/Vundle.vim'))
  !git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let fresh_vundle = 1
endif

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Features
if has('lua')
  Plugin 'Shougo/neocomplete.vim'
  let g:neocomplete#enable_at_startup = 1
end
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'sjl/gundo.vim'
let g:gundo_preview_bottom = 1
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'godlygeek/tabular'
Plugin 'file-line'
Plugin 'lastpos.vim'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jpalardy/vim-slime'
let g:slime_target = 'tmux'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" QuickFix
Plugin 'milkypostman/vim-togglelist'
Plugin 'jceb/vim-hier'

" Buffer
Plugin 'Soares/butane.vim'
Plugin 'ZoomWin'
Plugin 'scratch.vim'

" Navigation
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/ctrlp-register'
Plugin 'tacahiroy/ctrlp-funky'
let g:ctrlp_extensions = ['register', 'funky']
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }
let g:ctrlp_open_multiple_files = '2v'

" Filetypes
Plugin 'tpope/vim-git'
Plugin 'kballard/vim-fish'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'pangloss/vim-javascript'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'dag/vim2hs'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'tpope/vim-jdaddy'
Plugin 'othree/html5.vim'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jQuery'
Plugin 'nono/vim-handlebars'
Plugin 'wavded/vim-stylus'
Plugin 'rodjek/vim-puppet'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'solarnz/thrift.vim'

" Syntax
Plugin 't9md/vim-ruby-xmpfilter'
let g:xmpfilter_cmd = 'seeing_is_believing'
Plugin 'scrooloose/syntastic'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 2
let g:syntastic_auto_jump = 2
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
Plugin 'AndrewRadev/switch.vim'
Plugin 'jgdavey/vim-blockle'
let g:blockle_mapping = '<Leader>j'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'nelstrom/vim-textobj-rubyblock'
let g:textobj_rubyblock_no_default_key_mappings = 1
Plugin 'tpope/vim-endwise'

call vundle#end()

if exists('fresh_vundle')
  PluginInstall
  unlet fresh_vundle
  wincmd c
endif
