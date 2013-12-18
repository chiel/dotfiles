set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "fresh"

" Base colours
hi Normal          ctermbg=233  ctermfg=253

" UI elements
hi ColorColumn     ctermbg=234               cterm=none
hi CursorLine      ctermbg=234               cterm=none
hi Folded          ctermbg=none ctermfg=238
hi LineNr          ctermbg=235  ctermfg=248
hi MatchParen      ctermbg=101  ctermbg=228
hi PMenu           ctermbg=234  ctermfg=230
hi PMenuSel        ctermbg=192  ctermfg=232
hi Search          ctermbg=236  ctermfg=177
hi SpecialKey                   ctermfg=235
hi StatusLine      ctermbg=255  ctermfg=89
hi StatusLineNC    ctermbg=240  ctermfg=235

" Diffs
hi DiffAdd         ctermbg=22   ctermfg=82
hi DiffChange      ctermbg=236
hi DiffDelete      ctermbg=52   ctermfg=52
hi DiffText        ctermbg=237  ctermfg=217  cterm=bold

" Comments
hi Comment                      ctermfg=246
hi Todo            ctermbg=none ctermfg=101  cterm=bold
"
" Syntax
hi Boolean                      ctermfg=181
hi Constant                     ctermfg=173
hi Float                        ctermfg=251
hi Function                     ctermfg=192
hi Identifier                   ctermfg=192
hi Keyword                      ctermfg=111
hi MatchParen      ctermbg=101  ctermfg=228  cterm=none
hi Number                       ctermfg=173
hi Special                      ctermfg=229
hi Statement                    ctermfg=111
hi String                       ctermfg=113
hi Type                         ctermfg=186 cterm=bold

"hi Character       ctermfg=181   cterm=bold
"hi Conditional     ctermfg=223   cterm=bold
"hi Cursor          ctermfg=233   ctermbg=109     cterm=bold
"hi Debug           ctermfg=181   cterm=bold
"hi Define          ctermfg=223   cterm=bold
"hi Delimiter       ctermfg=245
"hi Directory       ctermfg=99   cterm=bold
"hi ErrorMsg        ctermfg=115   ctermbg=236     cterm=bold
"hi Exception       ctermfg=249   cterm=bold
"hi FoldColumn      ctermfg=109   ctermbg=238
"hi IncSearch       ctermbg=228   ctermfg=238
"hi Label           ctermfg=187   cterm=underline
"hi Macro           ctermfg=223   cterm=bold
"hi ModeMsg         ctermfg=223   cterm=none
"hi MoreMsg         ctermfg=15    cterm=bold
"hi Operator        ctermfg=230
"hi PreCondit       ctermfg=180   cterm=bold
"hi PreProc         ctermfg=223   cterm=bold
"hi Question        ctermfg=15    cterm=bold
"hi Repeat          ctermfg=223   cterm=bold
"hi SpecialChar     ctermfg=181   cterm=bold
"hi SpecialComment  ctermfg=108   cterm=bold
"hi StorageClass    ctermfg=249   cterm=bold
"hi Structure       ctermfg=229   cterm=bold
"hi Tag             ctermfg=181   cterm=bold
"hi Title           ctermfg=7     ctermbg=234     cterm=bold
"hi Typedef         ctermfg=253   cterm=bold
"hi Underlined      ctermfg=188   ctermbg=234     cterm=bold
"hi VertSplit       ctermfg=236   ctermbg=65
"hi VisualNOS       ctermfg=236   ctermbg=210     cterm=bold
"hi WarningMsg      ctermfg=15    ctermbg=236     cterm=bold
"hi WildMenu        ctermbg=236   ctermfg=194     cterm=bold

" spellchecking, always "bright" background
"hi SpellLocal ctermfg=14  ctermbg=237
"hi SpellBad   ctermfg=9   ctermbg=237
"hi SpellCap   ctermfg=12  ctermbg=237
"hi SpellRare  ctermfg=13  ctermbg=237
