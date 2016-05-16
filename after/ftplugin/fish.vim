setlocal keywordprg=:Ref\ fish
setlocal expandtab
call SetIndentation(4)

let &l:makeprg = 'fish'
let b:dispatch = 'fish %'
