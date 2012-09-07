call SetupWrapping()

setlocal spell
setlocal fdm=syntax

" fold region for headings
syntax region mkdHeaderFold
    \ start="^\s*\z(#\+\)"
    \ skip="^\s*\z1#\+"
    \ end="^\(\s*#\)\@="
    \ fold contains=TOP
" fold region for lists
syntax region mkdListFold
    \ start="^\z(\s*\)\*\z(\s*\)"
    \ skip="^\z1 \z2\s*[^#]"
    \ end="^\(.\)\@="
    \ fold contains=TOP
syntax sync fromstart
