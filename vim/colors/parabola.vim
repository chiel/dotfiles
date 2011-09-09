set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "parabola"

" Base colours
hi Normal          ctermfg=252 ctermbg=233

" UI elements
hi Cursor          ctermfg=16 ctermbg=253
hi CursorLine      ctermbg=234 cterm=none
hi Folded          ctermbg=235 ctermfg=103
hi LineNr          ctermbg=235 ctermfg=248
hi MatchParen      ctermbg=101 ctermbg=228
hi PMenu           ctermbg=234 ctermfg=230
hi PMenuSel        ctermbg=192 ctermfg=232
hi Search          ctermbg=236 ctermfg=177
hi SpecialKey      ctermfg=235
hi StatusLine      ctermbg=255 ctermfg=89
hi StatusLineNC    ctermfg=235 ctermbg=240

" Comments
hi Comment         ctermfg=246
hi Todo            ctermfg=101 ctermbg=234 cterm=bold

" Syntax
hi Boolean         ctermfg=135
hi Constant        ctermfg=135 cterm=bold
hi Debug           ctermfg=225 cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241
hi Exception       ctermfg=118 cterm=bold
hi Float           ctermfg=135
hi Function        ctermfg=118
hi Identifier      ctermfg=208 cterm=none
hi Keyword         ctermfg=161 cterm=bold
hi Label           ctermfg=161 cterm=none
hi MatchParen      ctermfg=16 ctermbg=208 cterm=bold
hi Number          ctermfg=135
hi Special         ctermfg=81
hi Statement       ctermfg=161               cterm=bold
hi String          ctermfg=144
hi Type            ctermfg=81                cterm=none

" Diffs
hi DiffAdd         ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText        ctermbg=102 cterm=bold


"
hi Character       ctermfg=144
hi Conditional     ctermfg=161               cterm=bold

hi Directory       ctermfg=118               cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi Macro           ctermfg=193

hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel                    ctermbg=244
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=118               cterm=bold
hi PreProc         ctermfg=118
hi Question        ctermfg=81
hi Repeat          ctermfg=161               cterm=bold
hi Search          ctermfg=253 ctermbg=66

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold

hi StorageClass    ctermfg=208
hi Structure       ctermfg=81
hi Tag             ctermfg=161
hi Title           ctermfg=166
hi Todo            ctermfg=231 ctermbg=232   cterm=bold

hi Typedef         ctermfg=81
hi Underlined      ctermfg=244               cterm=underline

hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual                      ctermbg=235
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16

hi Comment         ctermfg=59
hi CursorLine                  ctermbg=234   cterm=none
hi CursorColumn                ctermbg=234
hi LineNr          ctermfg=250 ctermbg=234
