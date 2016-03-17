call plug#begin('~/.vim/plugged')

" Schemes
Plug 'NLKNguyen/papercolor-theme'

" Features
Plug 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'
let g:test#strategy = 'dispatch'
Plug 'tpope/vim-projectionist'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-unimpaired'
Plug 'mbbill/undotree',         { 'on': 'UndotreeToggle' }
let g:gundo_preview_bottom = 1
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'file-line'
Plug 'lastpos.vim'
Plug 'junegunn/goyo.vim',       { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim',  { 'on': 'Limelight' }
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'
let g:indentLine_char = '▏'
Plug 'Yggdroot/indentLine'
Plug 'LargeFile'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Folding
Plug 'Konfekt/FastFold'

" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime'
let g:slime_target = 'tmux'

" Git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv',               { 'on': 'Gitv' }
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'rhysd/committia.vim'

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
Plug 'junegunn/fzf'

" Filetypes
Plug 'tpope/vim-git'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax',   { 'for': 'pandoc' }
Plug 'vim-ruby/vim-ruby',              { 'for': ['ruby', 'eruby'] }
Plug 'sunaku/vim-ruby-minitest',       { 'for': 'ruby' }
Plug 't9md/vim-ruby-xmpfilter',        { 'for': 'ruby' }
let g:xmpfilter_cmd = 'seeing_is_believing'
Plug 'ecomba/vim-ruby-refactoring',    { 'for': 'ruby' }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'kballard/vim-fish',              { 'for': ['fish', 'fishprofile'] }
Plug 'elzr/vim-json',                  { 'for': ['json'] }
Plug 'tpope/vim-jdaddy',               { 'for': ['json'] }
Plug 'pangloss/vim-javascript',        { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script',       { 'for': 'coffee' }
Plug 'elixir-lang/vim-elixir',         { 'for': ['elixir', 'eelixir'] }
Plug 'jimenezrick/vimerl',             { 'for': 'erlang' }
Plug 'dag/vim2hs',                     { 'for': ['haskell', 'cabal'] }
Plug 'othree/html5.vim',               { 'for': 'html' }
Plug 'slim-template/vim-slim',         { 'for': 'slim' }
Plug 'tpope/vim-haml',                 { 'for': ['haml', 'sass', 'scss'] }
Plug 'nono/vim-handlebars',            { 'for': 'handlebars' }
Plug 'wavded/vim-stylus',              { 'for': 'stylus' }
Plug 'rodjek/vim-puppet',              { 'for': 'puppet' }
Plug 'docker/docker',                  { 'for': 'Dockerfile', 'rtp': 'contrib/syntax/vim' }
Plug 'solarnz/thrift.vim',             { 'for': 'thrift' }
Plug 'plasticboy/vim-markdown',        { 'for': 'markdown' }
Plug 'aklt/plantuml-syntax',           { 'for': 'plantuml' }
Plug 'hdima/python-syntax',            { 'for': 'python' }
Plug 'fatih/vim-go',                   { 'for': 'go' }
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
Plug 'tpope/vim-rake'
Plug 'etnadji/vim-epub'

" Syntax
Plug 'scrooloose/syntastic'
let g:syntastic_auto_loc_list = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
Plug 'AndrewRadev/switch.vim'
Plug 'jgdavey/vim-blockle'
let g:blockle_mapping = '<Leader>j'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
let g:textobj_rubyblock_no_default_key_mappings = 1
Plug 'junegunn/vim-after-object'
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')
Plug 'tpope/vim-endwise'

call plug#end()

if !isdirectory(expand('~/.vim/plugged'))
  PlugInstall
  wincmd c
endif
