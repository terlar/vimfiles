" Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" JavaScript
au BufRead,BufNewFile *.json set ft=javascript

" Text
au BufRead,BufNewFile *.{txt,md,markdown,mdown,mkd,mkdn} call SetupWrapping()

" CSS
au BufRead,BufNewFile *.{css,scss} call SetCssOptions()
function SetCssOptions()
  set fdm=marker fmr={,} \
  " Sort properties
  nnoremap <buffer> <Leader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>
endfunction

filetype plugin indent on
