if $SHELL =~ 'fish'
  set shell=/bin/sh
endif

" Load Functions
  runtime! functions/*.vim

" Load Config
  runtime rc/settings.vim
  runtime rc/plugins.vim
  runtime rc/mappings.vim

  runtime! macros/matchit.vim
