hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="solo"

let s:base03      = "8"
let s:base02      = "0"
let s:base01      = "10"
let s:base00      = "11"
let s:base0       = "12"
let s:base1       = "14"
let s:base2       = "7"
let s:base3       = "15"
let s:yellow      = "3"
let s:orange      = "9"
let s:red         = "1"
let s:magenta     = "5"
let s:violet      = "13"
let s:blue        = "4"
let s:cyan        = "6"
let s:green       = "2"
let s:back        = "NONE"

" Formatting options and null values for passthrough effect
let s:none        = "NONE"
let s:t_none      = "NONE"
let s:n           = "NONE"
let s:c           = ",undercurl"
let s:r           = ",reverse"
let s:s           = ",standout"
let s:ou          = ""
let s:ob          = ""

let s:b           = ",bold"
let s:bb          = ""

let s:u           = ",underline"

let s:i           = ",italic"

function s:style(fmt, fg, bg)
  return " gui=NONE".a:fmt." cterm=NONE".a:fmt." term=NONE".a:fmt
      \ ." guifg=".a:fg." ctermfg=".a:fg
      \ ." guibg=".a:bg." ctermbg=".a:bg
endfunction

" Basic highlighting
"exe "hi! Normal"         .s:style("", s:base0, s:back)

exe "hi! Comment"        .s:style(s:i, s:base01, s:none)
"       *Comment         any comment

exe "hi! Constant"       .s:style("", s:cyan, s:none)
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier"     .s:style("", s:blue, s:none)
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:style("", s:green, s:none)
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:style("", s:orange, s:none)
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:style("", s:yellow, s:none)
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:style("", s:red, s:none)
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Underlined"     .s:style("", s:violet, s:none)
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:style("", s:none, s:none)
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:style(s:b, s:red, s:none)
"       *Error           any erroneous construct

exe "hi! Todo"           .s:style(s:b, s:magenta, s:none)
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

" Extended highlighting
exe "hi! SpecialKey"     .s:style(s:b          ,s:base00 ,s:base02)
exe "hi! NonText"        .s:style(s:b          ,s:base00 ,s:none)
exe "hi! StatusLine"     .s:style(s:r.s:bb     ,s:base1  ,s:base02)
exe "hi! StatusLineNC"   .s:style(s:r.s:bb     ,s:base00 ,s:base02)
exe "hi! Visual"         .s:style(""           ,s:none   ,s:base2)
exe "hi! Directory"      .s:style(""           ,s:blue   ,s:none)
exe "hi! ErrorMsg"       .s:style(s:r          ,s:red    ,s:none)
exe "hi! IncSearch"      .s:style(s:s          ,s:orange ,s:none)
exe "hi! Search"         .s:style(s:r          ,s:yellow ,s:none)
exe "hi! MoreMsg"        .s:style(""           ,s:blue   ,s:none)
exe "hi! ModeMsg"        .s:style(""           ,s:blue   ,s:none)
exe "hi! LineNr"         .s:style(""           ,s:base01 ,s:base02)
exe "hi! Question"       .s:style(s:b          ,s:cyan   ,s:none)
exe "hi! VertSplit"      .s:style(s:r.s:bb     ,s:base00 ,s:base02)
exe "hi! Title"          .s:style(s:b          ,s:orange ,s:none)
exe "hi! VisualNOS"      .s:style(s:s          ,s:none   ,s:base02)
exe "hi! WarningMsg"     .s:style(s:b          ,s:red    ,s:none)
exe "hi! WildMenu"       .s:style(s:r.s:bb     ,s:base2  ,s:base02)
exe "hi! Folded"         .s:style(s:u.s:b      ,s:base0  ,s:base02)
exe "hi! FoldColumn"     .s:style(""           ,s:base0  ,s:base02)
exe "hi! DiffAdd"        .s:style(""           ,s:green  ,s:base02)
exe "hi! DiffChange"     .s:style(""           ,s:yellow ,s:base02)
exe "hi! DiffDelete"     .s:style(""           ,s:red    ,s:base02)
exe "hi! DiffText"       .s:style(""           ,s:blue   ,s:base02)
exe "hi! SignColumn"     .s:style(""           ,s:base0  ,s:base02)
exe "hi! Conceal"        .s:style(""           ,s:blue   ,s:none)
exe "hi! SpellBad"       .s:style(s:c          ,s:none   ,s:none)
exe "hi! SpellCap"       .s:style(s:c          ,s:none   ,s:none)
exe "hi! SpellRare"      .s:style(s:c          ,s:none   ,s:none)
exe "hi! SpellLocal"     .s:style(s:c          ,s:none   ,s:none)
exe "hi! Pmenu"          .s:style(s:r.s:bb     ,s:base0  ,s:base02)
exe "hi! PmenuSel"       .s:style(s:r.s:bb     ,s:base01 ,s:base2)
exe "hi! PmenuSbar"      .s:style(s:r.s:bb     ,s:base2  ,s:base0)
exe "hi! PmenuThumb"     .s:style(s:r.s:bb     ,s:base0  ,s:base03)
exe "hi! TabLine"        .s:style(s:u          ,s:base0  ,s:base02)
exe "hi! TabLineFill"    .s:style(s:u          ,s:base0  ,s:base02)
exe "hi! TabLineSel"     .s:style(s:r.s:bb     ,s:base01 ,s:base2)
exe "hi! CursorColumn"   .s:style(""           ,s:none   ,s:base02)
exe "hi! CursorLine"     .s:style(s:ou         ,s:none   ,s:base02)
exe "hi! ColorColumn"    .s:style(""           ,s:none   ,s:base02)
exe "hi! Cursor"         .s:style(""           ,s:base03 ,s:base0)
hi! link lCursor Cursor
exe "hi! MatchParen"     .s:style(s:b          ,s:red    ,s:base01)

" vim syntax highlighting
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
exe "hi! vimCommentString"  .s:style(""            ,s:violet ,s:none)
exe "hi! vimCommand"        .s:style(""            ,s:yellow ,s:none)
exe "hi! vimCmdSep"         .s:style(s:b           ,s:blue   ,s:none)
exe "hi! helpExample"       .s:style(""            ,s:base1  ,s:none)
exe "hi! helpOption"        .s:style(""            ,s:cyan   ,s:none)
exe "hi! helpNote"          .s:style(""            ,s:magenta,s:none)
exe "hi! helpVim"           .s:style(""            ,s:magenta,s:none)
exe "hi! helpHyperTextJump" .s:style(s:u           ,s:blue   ,s:none)
exe "hi! helpHyperTextEntry".s:style(""            ,s:green  ,s:none)
exe "hi! vimIsCommand"      .s:style(""            ,s:base00 ,s:none)
exe "hi! vimSynMtchOpt"     .s:style(""            ,s:yellow ,s:none)
exe "hi! vimSynType"        .s:style(""            ,s:cyan   ,s:none)
exe "hi! vimHiLink"         .s:style(""            ,s:blue   ,s:none)
exe "hi! vimHiGroup"        .s:style(""            ,s:blue   ,s:none)
exe "hi! vimGroup"          .s:style(s:u.s:b       ,s:blue   ,s:none)

" diff highlighting
hi! link diffAdded Statement
hi! link diffLine Identifier
