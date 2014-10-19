call plug#begin('~/.vim/plugged')

" Features
if has('lua')
  Plug 'Shougo/neocomplete.vim'
  let g:neocomplete#enable_at_startup = 1
end
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'sjl/gundo.vim'
let g:gundo_preview_bottom = 1
Plug 'ecomba/vim-ruby-refactoring'
Plug 'godlygeek/tabular'
Plug 'file-line'
Plug 'lastpos.vim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime'
let g:slime_target = 'tmux'

" Git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" QuickFix
Plug 'milkypostman/vim-togglelist'
Plug 'jceb/vim-hier'

" Buffer
Plug 'Soares/butane.vim'
Plug 'ZoomWin'
Plug 'scratch.vim'

" Navigation
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'mattn/ctrlp-register'
Plug 'tacahiroy/ctrlp-funky'
let g:ctrlp_extensions = ['register', 'funky']
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<CR>', '<Tab>', '<2-LeftMouse>'] }
let g:ctrlp_open_multiple_files = '2v'

" Filetypes
Plug 'tpope/vim-git'
Plug 'kballard/vim-fish'
Plug 'vim-ruby/vim-ruby'
Plug 'sunaku/vim-ruby-minitest'
Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'jimenezrick/vimerl'
Plug 'dag/vim2hs'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'tpope/vim-jdaddy'
Plug 'othree/html5.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script'
Plug 'jQuery'
Plug 'nono/vim-handlebars'
Plug 'wavded/vim-stylus'
Plug 'rodjek/vim-puppet'
Plug 'ekalinin/Dockerfile.vim'
Plug 'solarnz/thrift.vim'

" Syntax
Plug 't9md/vim-ruby-xmpfilter'
let g:xmpfilter_cmd = 'seeing_is_believing'
Plug 'scrooloose/syntastic'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 2
let g:syntastic_auto_jump = 2
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
Plug 'AndrewRadev/switch.vim'
Plug 'jgdavey/vim-blockle'
let g:blockle_mapping = '<Leader>j'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'nelstrom/vim-textobj-rubyblock'
let g:textobj_rubyblock_no_default_key_mappings = 1
Plug 'tpope/vim-endwise'

call plug#end()

if !isdirectory(expand('~/.vim/plugged'))
  PlugInstall
  wincmd c
endif
