for src in split(glob('config/**/*.vim'), "\n")
  exe "runtime ".src
endfor
