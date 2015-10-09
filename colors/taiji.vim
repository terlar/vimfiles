" Vim color file
" Maintainer: Terje Larsen <terlar@gmail.com>
" Last Change: Fri Nov 14 10:25:23 CET 2014

highlight clear Normal
set background&

if !empty($DISPLAY)
  set t_Co=256
else
  set t_Co=16
endif

highlight clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "taiji"
let g:limelight_conceal_ctermfg=250

" Vim colors
highlight SpecialKey    ctermfg=DarkGray    ctermbg=NONE      cterm=NONE
highlight NonText       ctermfg=Black       ctermbg=Black     cterm=NONE
highlight Directory     ctermfg=DarkBlue    ctermbg=NONE      cterm=Bold
highlight ErrorMsg      ctermfg=White       ctermbg=Red       cterm=NONE
highlight IncSearch     ctermfg=NONE        ctermbg=NONE      cterm=Standout,Bold
highlight Search        ctermfg=NONE        ctermbg=NONE      cterm=Underline
highlight MoreMsg       ctermfg=Gray        ctermbg=NONE      cterm=NONE
highlight ModeMsg       ctermfg=Gray        ctermbg=NONE      cterm=NONE
highlight Question      ctermfg=Gray        ctermbg=NONE      cterm=NONE
highlight LineNr        ctermfg=NONE        ctermbg=NONE      cterm=Reverse
highlight CursorLineNr  ctermfg=Gray        ctermbg=NONE      cterm=NONE
highlight StatusLine    ctermfg=NONE        ctermbg=NONE      cterm=Bold,Reverse
highlight StatusLineNC  ctermfg=Gray        ctermbg=NONE      cterm=Reverse
highlight VertSplit     ctermfg=Gray        ctermbg=DarkGray  cterm=Reverse
highlight Title         ctermfg=NONE        ctermbg=NONE      cterm=Bold
highlight Visual        ctermfg=NONE        ctermbg=NONE      cterm=Reverse
highlight VisualNOS     ctermfg=NONE        ctermbg=NONE      cterm=Bold,Underline
highlight WarningMsg    ctermfg=DarkRed     ctermbg=NONE      cterm=NONE
highlight Folded        ctermfg=DarkGray    ctermbg=Gray      cterm=NONE
highlight FoldedColumn  ctermfg=DarkGray    ctermbg=Gray      cterm=NONE
highlight DiffAdd       ctermfg=DarkGreen   ctermbg=NONE      cterm=NONE
highlight DiffChange    ctermfg=DarkBlue    ctermbg=NONE      cterm=NONE
highlight DiffDelete    ctermfg=DarkRed     ctermbg=NONE      cterm=NONE
highlight DiffText      ctermfg=DarkBlue    ctermbg=NONE      cterm=Bold
highlight SignColumn    ctermfg=Gray        ctermbg=DarkGray  cterm=NONE
highlight Conceal       ctermfg=DarkGray    ctermbg=NONE      cterm=NONE
highlight SpellBad      ctermfg=DarkRed     ctermbg=NONE      cterm=Standout,Undercurl
highlight SpellCap      ctermfg=DarkBlue    ctermbg=NONE      cterm=Standout,Undercurl
highlight SpellRare     ctermfg=DarkMagenta ctermbg=NONE      cterm=Standout,Undercurl
highlight SpellLocal    ctermfg=DarkCyan    ctermbg=NONE      cterm=Standout,Undercurl
highlight Pmenu         ctermfg=Gray        ctermbg=DarkGray  cterm=NONE
highlight PmenuSel      ctermfg=DarkGray    ctermbg=Gray      cterm=NONE
highlight PmenuSbar     ctermfg=NONE        ctermbg=Gray      cterm=NONE
highlight PmenuThumb    ctermfg=NONE        ctermbg=NONE      cterm=Reverse
highlight TabLine       ctermfg=NONE        ctermbg=NONE      cterm=Reverse
highlight TabLineFill   ctermfg=NONE        ctermbg=NONE      cterm=Reverse
highlight TabLineSel    ctermfg=NONE        ctermbg=NONE      cterm=Bold
highlight CursorColumn  ctermfg=NONE        ctermbg=DarkGray  cterm=NONE
highlight CursorLine    ctermfg=NONE        ctermbg=NONE      cterm=Underline
highlight ColorColumn   ctermfg=NONE        ctermbg=DarkGray  cterm=NONE
highlight MatchParen    ctermfg=NONE        ctermbg=NONE      cterm=Inverse

highlight Normal        ctermfg=NONE        ctermbg=NONE      cterm=NONE
highlight Comment       ctermfg=Gray        ctermbg=NONE      cterm=NONE

highlight Constant      ctermfg=Yellow      ctermbg=NONE      cterm=NONE
highlight Special       ctermfg=Red         ctermbg=NONE      cterm=Bold
highlight Identifier    ctermfg=Blue        ctermbg=NONE      cterm=NONE
highlight Statement     ctermfg=NONE        ctermbg=NONE      cterm=Bold
highlight PreProc       ctermfg=NONE        ctermbg=NONE      cterm=Bold
highlight Error         ctermfg=Red         ctermbg=NONE      cterm=Standout
highlight Todo          ctermfg=DarkCyan    ctermbg=NONE      cterm=Inverse
highlight String        ctermfg=Green       ctermbg=NONE      cterm=NONE
highlight Number        ctermfg=Red         ctermbg=NONE      cterm=NONE

highlight IndentGuidesEven ctermfg=NONE     ctermbg=254       cterm=NONE

highlight def link ObliqueLine String

" Vim monochrome
highlight Search     term=Underline
highlight MatchParen term=Inverse

highlight Normal     term=NONE
highlight Comment    term=NONE
highlight Constant   term=NONE
highlight Number     term=NONE
highlight Identifier term=NONE
highlight Statement  term=Bold
highlight PreProc    term=Bold
highlight Type       term=Bold
highlight Special    term=NONE

" vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2
