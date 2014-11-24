if $SHELL =~ 'fish'
  set shell=/usr/bin/sh
endif

" Load Functions
  runtime! functions/*.vim

" Load Config
  runtime rc/plugins.vim
  runtime rc/settings.vim
  runtime rc/mappings.vim

  runtime! macros/matchit.vim
