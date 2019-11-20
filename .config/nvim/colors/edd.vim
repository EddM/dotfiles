"set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Edd's Theme"

hi Cursor ctermfg=16 ctermbg=16 cterm=NONE guifg=#14161b guibg=#ffffff gui=NONE
hi Visual ctermfg=16 ctermbg=255 cterm=NONE guifg=NONE guibg=#272e33 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#27292e gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#27292e gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=16 cterm=NONE guifg=NONE guibg=#27292e gui=NONE
hi LineNr ctermfg=239 ctermbg=NONE cterm=NONE guifg=#71757c guibg=#27292e gui=NONE
hi CursorLineNR ctermfg=255 ctermbg=236
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#4a4d53 guibg=#4a4d53 gui=NONE
hi MatchParen ctermfg=137 ctermbg=NONE cterm=underline guifg=#a89163 guibg=NONE gui=underline
hi StatusLine ctermfg=188 ctermbg=59 cterm=bold guifg=#ced3dd guibg=#4a4d53 gui=bold
hi StatusLineNC ctermfg=188 ctermbg=59 cterm=NONE guifg=#ced3dd guibg=#4a4d53 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#272e33 gui=NONE
hi IncSearch ctermfg=16 ctermbg=144 cterm=NONE guifg=#14161b guibg=#a3be8c gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=144 ctermbg=NONE cterm=NONE guifg=#a3be8c guibg=NONE gui=NONE
hi Folded ctermfg=60 ctermbg=16 cterm=NONE guifg=#65737e guibg=#14161b gui=NONE

hi TabLineFill ctermfg=235 ctermbg=220
hi TabLine ctermfg=245 ctermbg=235 cterm=NONE
hi TabLineSel ctermfg=17 ctermbg=190 cterm=NONE

hi Pmenu ctermbg=255 ctermfg=0
hi PmenuSel ctermbg=190 ctermfg=0
hi PmenuSbar ctermbg=0

hi SignColumn ctermbg=234
hi ALEWarningSign ctermbg=130 ctermfg=130
hi ALEWarning ctermbg=130
hi ALEErrorSign ctermbg=52 ctermfg=52
hi ALEError ctermbg=52
" hi ALEWarning ctermbg=130 ctermfg=214
" hi ALEError ctermbg=52 ctermfg=1

hi Normal guibg=NONE ctermbg=NONE
hi Boolean ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi Character ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#65737e guibg=NONE gui=NONE
hi Conditional ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi Constant ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi Define ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi DiffAdd ctermfg=188 ctermbg=64 cterm=bold guifg=#ced3dd guibg=#42800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#870405 guibg=NONE gui=NONE
hi DiffChange ctermfg=188 ctermbg=23 cterm=NONE guifg=#ced3dd guibg=#1a3051 gui=NONE
hi DiffText ctermfg=188 ctermbg=24 cterm=bold guifg=#ced3dd guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi Function ctermfg=186 ctermbg=NONE cterm=NONE guifg=#ebcb8b guibg=NONE gui=NONE
hi Identifier ctermfg=139 ctermbg=NONE cterm=NONE guifg=#b48ead guibg=NONE gui=NONE
hi Keyword ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi Label ctermfg=144 ctermbg=NONE cterm=NONE guifg=#a3be8c guibg=NONE gui=NONE
hi NonText ctermfg=60 ctermbg=16 cterm=NONE guifg=#65737e guibg=#1d1f25 gui=NONE
hi Number ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi Operator ctermfg=152 ctermbg=NONE cterm=NONE guifg=#c0c5ce guibg=NONE gui=NONE
hi PreProc ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi Special ctermfg=188 ctermbg=NONE cterm=NONE guifg=#ced3dd guibg=NONE gui=NONE
hi SpecialKey ctermfg=60 ctermbg=16 cterm=NONE guifg=#65737e guibg=#27292e gui=NONE
hi Statement ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi StorageClass ctermfg=139 ctermbg=NONE cterm=NONE guifg=#b48ead guibg=NONE gui=NONE
hi String ctermfg=150 ctermbg=NONE cterm=NONE guifg=#a3be8c guibg=NONE gui=NONE
hi Tag ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi Title ctermfg=188 ctermbg=NONE cterm=bold guifg=#ced3dd guibg=NONE gui=bold
hi Todo ctermfg=60 ctermbg=NONE cterm=inverse,bold guifg=#65737e guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi rubyFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#ebcb8b guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=103 ctermbg=NONE cterm=NONE guifg=#828fb0 guibg=NONE gui=NONE
hi rubyConstant ctermfg=139 ctermbg=NONE cterm=NONE guifg=#b48ead guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=144 ctermbg=NONE cterm=NONE guifg=#a3be8c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi rubyInclude ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi rubyRegexp ctermfg=109 ctermbg=NONE cterm=NONE guifg=#96b5b4 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=109 ctermbg=NONE cterm=NONE guifg=#96b5b4 guibg=NONE gui=NONE
hi rubyEscape ctermfg=109 ctermbg=NONE cterm=NONE guifg=#96b5b4 guibg=NONE gui=NONE
hi rubyControl ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi rubyOperator ctermfg=152 ctermbg=NONE cterm=NONE guifg=#c0c5ce guibg=NONE gui=NONE
hi rubyException ctermfg=137 ctermbg=NONE cterm=NONE guifg=#a89163 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=139 ctermbg=NONE cterm=NONE guifg=#b48ead guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#ebcb8b guibg=NONE gui=NONE
hi erubyComment ctermfg=60 ctermbg=NONE cterm=NONE guifg=#65737e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTag ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi htmlEndTag ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi htmlTagName ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi htmlArg ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=139 ctermbg=NONE cterm=NONE guifg=#b48ead guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi yamlAnchor ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi yamlAlias ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=144 ctermbg=NONE cterm=NONE guifg=#a3be8c guibg=NONE gui=NONE
hi cssURL ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi cssFunctionName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssColor ctermfg=109 ctermbg=NONE cterm=NONE guifg=#96b5b4 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi cssClassName ctermfg=131 ctermbg=NONE cterm=NONE guifg=#bf616a guibg=NONE gui=NONE
hi cssValueLength ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08770 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
