" Default GUI Colours
let s:foreground = '0'
let s:background = '15'
let s:selection = '7'
let s:line = '7'
let s:comment = '8'
let s:red = '1'
let s:orange = '11'
let s:yellow = '3'
let s:green = '2'
let s:aqua = '6'
let s:blue = '4'
let s:purple = '5'
let s:window = '15'

set background=light
hi clear
syntax reset

let g:colors_name = "Tomorrow"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " Sets the highlighting for the given group
  fun <SID>X(group, fg, bg, attr)
    if a:fg != ""
      exec "hi " . a:group . " ctermfg=" . a:fg
    endif
    if a:bg != ""
      exec "hi " . a:group . " ctermbg=" . a:bg
    endif
    if a:attr != ""
      exec "hi " . a:group . " cterm=" . a:attr
    endif
  endfun

  " Vim Highlighting
  call <SID>X("Normal", s:foreground, "", "")
  call <SID>X("LineNr", s:comment, s:line, "")
  call <SID>X("SignColumn", s:comment, s:line, "")
  call <SID>X("NonText", s:selection, s:line, "")
  call <SID>X("SpecialKey", s:selection, "", "")
  call <SID>X("Search", s:foreground, s:yellow, "")
  call <SID>X("TabLine", s:foreground, s:background, "reverse")
  call <SID>X("StatusLine", s:window, s:yellow, "reverse")
  call <SID>X("StatusLineNC", s:window, s:foreground, "reverse")
  call <SID>X("VertSplit", s:window, s:window, "none")
  call <SID>X("Visual", "", s:selection, "")
  call <SID>X("Directory", s:blue, "", "")
  call <SID>X("ModeMsg", s:green, "", "")
  call <SID>X("MoreMsg", s:green, "", "")
  call <SID>X("Question", s:green, "", "")
  call <SID>X("WarningMsg", s:red, "", "")
  call <SID>X("MatchParen", "", s:selection, "")
  call <SID>X("Folded", s:comment, s:background, "")
  call <SID>X("FoldColumn", "", s:background, "")
  if version >= 700
    call <SID>X("CursorLine", "", s:line, "none")
    call <SID>X("CursorColumn", "", s:line, "none")
    call <SID>X("PMenu", s:foreground, s:selection, "none")
    call <SID>X("PMenuSel", s:foreground, s:selection, "reverse")
  end
  if version >= 703
    call <SID>X("ColorColumn", "", s:line, "none")
  end

  " Standard Highlighting
  call <SID>X("Comment", s:comment, "", "")
  call <SID>X("Todo", s:comment, s:background, "")
  call <SID>X("Title", s:comment, "", "")
  call <SID>X("Identifier", s:red, "", "none")
  call <SID>X("Statement", s:foreground, "", "")
  call <SID>X("Conditional", s:foreground, "", "")
  call <SID>X("Repeat", s:foreground, "", "")
  call <SID>X("Structure", s:purple, "", "")
  call <SID>X("Function", s:blue, "", "")
  call <SID>X("Constant", s:orange, "", "")
  call <SID>X("StorageClass", s:yellow, "", "")
  call <SID>X("String", s:green, "", "")
  call <SID>X("Special", s:foreground, "", "")
  call <SID>X("PreProc", s:purple, "", "")
  call <SID>X("Operator", s:aqua, "", "none")
  call <SID>X("Type", s:red, "", "none")
  call <SID>X("Define", s:purple, "", "none")
  call <SID>X("Include", s:blue, "", "")
  call <SID>X("Ignore", s:line, "", "")

  " Vim Highlighting
  call <SID>X("vimCommand", s:red, "", "none")

  " C Highlighting
  call <SID>X("cType", s:yellow, "", "")
  call <SID>X("cStorageClass", s:purple, "", "")
  call <SID>X("cConditional", s:purple, "", "")
  call <SID>X("cRepeat", s:purple, "", "")

  " PHP Highlighting
  call <SID>X("phpVarSelector", s:red, "", "")
  call <SID>X("phpKeyword", s:purple, "", "")
  call <SID>X("phpRepeat", s:purple, "", "")
  call <SID>X("phpConditional", s:purple, "", "")
  call <SID>X("phpStatement", s:purple, "", "")
  call <SID>X("phpMemberSelector", s:foreground, "", "")

  " Ruby Highlighting
  call <SID>X("rubySymbol", s:green, "", "")
  call <SID>X("rubyConstant", s:red, "", "")
  call <SID>X("rubyAccess", s:yellow, "", "")
  call <SID>X("rubyAttribute", s:blue, "", "")
  call <SID>X("rubyInclude", s:blue, "", "")
  call <SID>X("rubyLocalVariableOrMethod", s:orange, "", "")
  call <SID>X("rubyCurlyBlock", s:orange, "", "")
  call <SID>X("rubyStringDelimiter", s:green, "", "")
  call <SID>X("rubyInterpolationDelimiter", s:orange, "", "")
  call <SID>X("rubyConditional", s:purple, "", "")
  call <SID>X("rubyRepeat", s:purple, "", "")
  call <SID>X("rubyControl", s:purple, "", "")
  call <SID>X("rubyException", s:purple, "", "")
  call <SID>X("rubyBlockParameter", s:orange, "", "")

  " Python Highlighting
  call <SID>X("pythonInclude", s:purple, "", "")
  call <SID>X("pythonStatement", s:purple, "", "")
  call <SID>X("pythonConditional", s:purple, "", "")
  call <SID>X("pythonRepeat", s:purple, "", "")
  call <SID>X("pythonException", s:purple, "", "")
  call <SID>X("pythonFunction", s:blue, "", "")
  call <SID>X("pythonPreCondit", s:purple, "", "")
  call <SID>X("pythonRepeat", s:aqua, "", "")
  call <SID>X("pythonExClass", s:orange, "", "")

  " JavaScript Highlighting
  call <SID>X("javaScriptBraces", s:foreground, "", "")
  call <SID>X("javaScriptFunction", s:purple, "", "")
  call <SID>X("javaScriptConditional", s:purple, "", "")
  call <SID>X("javaScriptRepeat", s:purple, "", "")
  call <SID>X("javaScriptNumber", s:orange, "", "")
  call <SID>X("javaScriptMember", s:orange, "", "")

  " HTML Highlighting
  call <SID>X("htmlTag", s:red, "", "")
  call <SID>X("htmlTagName", s:red, "", "")
  call <SID>X("htmlArg", s:red, "", "")
  call <SID>X("htmlScriptTag", s:red, "", "")

  " Diff Highlighting
  call <SID>X("diffAdded", s:green, "", "")
  call <SID>X("diffRemoved", s:red, "", "")

  " Lua Highlighting
  call <SID>X("luaStatement", s:purple, "", "")
  call <SID>X("luaRepeat", s:purple, "", "")
  call <SID>X("luaCondStart", s:purple, "", "")
  call <SID>X("luaCondElseif", s:purple, "", "")
  call <SID>X("luaCond", s:purple, "", "")
  call <SID>X("luaCondEnd", s:purple, "", "")

  " Cucumber Highlighting
  call <SID>X("cucumberGiven", s:blue, "", "")
  call <SID>X("cucumberGivenAnd", s:blue, "", "")

  " Go Highlighting
  call <SID>X("goDirective", s:purple, "", "")
  call <SID>X("goDeclaration", s:purple, "", "")
  call <SID>X("goStatement", s:purple, "", "")
  call <SID>X("goConditional", s:purple, "", "")
  call <SID>X("goConstants", s:orange, "", "")
  call <SID>X("goTodo", s:yellow, "", "")
  call <SID>X("goDeclType", s:blue, "", "")
  call <SID>X("goBuiltins", s:purple, "", "")

  " Delete Functions
  delf <SID>X
endif
