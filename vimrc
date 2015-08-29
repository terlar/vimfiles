if $SHELL =~ 'fish'
  let &shell = exepath('sh')
endif

" Load Functions
  runtime! functions/*.vim

" Load Config
  runtime rc/plugins.vim
  runtime rc/settings.vim
  runtime rc/mappings.vim

  runtime! macros/matchit.vim
