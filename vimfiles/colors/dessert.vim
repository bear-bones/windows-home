" Vim color file
" Maintainer:	James White <jwhite@ccccorp.com>
" Last Change:	2015-01-28
" Based On:	http://hans.fugal.net/vim/colors/desert.vim

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="dessert"



" color terminal definitions
highlight Normal    ctermfg=lightgrey   ctermbg=NONE   guifg=lightgrey guibg=black

" literals
highlight Number    ctermfg=darkred     guifg=darkred
highlight String    ctermfg=darkred     guifg=darkred
highlight Delimiter ctermfg=lightgrey   guifg=lightgrey

" basic syntax components
highlight Comment       ctermfg=darkgrey    guifg=darkgrey
highlight Conditional   ctermfg=lightyellow guifg=lightyellow
highlight Function      ctermfg=lightyellow guifg=lightyellow
highlight Identifier    ctermfg=lightyellow guifg=lightyellow
highlight Keyword       ctermfg=white       guifg=white
highlight Operator      ctermfg=white       guifg=white
highlight PreProc       ctermfg=white       guifg=white
highlight Repeat        ctermfg=lightyellow guifg=lightyellow
highlight Special       ctermfg=lightyellow guifg=lightyellow
highlight Statement     ctermfg=white       guifg=white

" diffs
highlight DiffAdd       ctermbg=lightblue                                       guibg=lightblue
highlight DiffChange    ctermbg=darkmagenta                                     guibg=darkmagenta
highlight DiffDelete    ctermfg=darkblue    ctermbg=darkcyan    guifg=darkblue  guibg=darkcyan
highlight DiffText      ctermbg=darkred                                         guibg=darkred

" other vim ui components
highlight ColorColumn                       ctermbg=black                                   guibg=darkgrey
highlight CursorLine                        ctermbg=NONE        cterm=underline             guibg=NONE          gui=underline
highlight CursorLineNR                      ctermbg=black       cterm=bold,underline        guibg=darkgrey      gui=bold,underline
highlight Error         ctermfg=black       ctermbg=darkred                 guifg=black     guibg=darkred
highlight FoldColumn    ctermfg=grey        ctermbg=NONE                    guifg=grey      guibg=NONE
highlight Folded        ctermfg=grey        ctermbg=NONE                    guifg=grey      guibg=NONE
highlight IncSearch     ctermfg=black       ctermbg=lightgreen  cterm=NONE  guifg=black     guibg=lightgreen    gui=NONE
highlight LineNr        ctermfg=darkgrey    ctermbg=black                   guifg=lightgrey guibg=darkgrey
highlight Search        ctermfg=black       ctermbg=lightgreen  cterm=NONE  guifg=black     guibg=lightgreen    gui=NONE

"highlight Directory    ctermfg=cyan
"highlight Ignore       ctermfg=7
"highlight Ignore       ctermfg=darkgrey
"highlight ModeMsg      cterm=NONE ctermfg=brown
"highlight MoreMsg      ctermfg=darkgreen
"highlight NonText      ctermfg=darkblue
"highlight Question     ctermfg=green
"highlight SpecialKey   ctermfg=darkgreen
"highlight StatusLine   cterm=reverse
"highlight StatusLineNC cterm=reverse
"highlight Title        ctermfg=magenta
"highlight Type         ctermfg=2
"highlight Underlined   ctermfg=magenta cterm=underline
"highlight VertSplit    cterm=reverse
"highlight Visual       cterm=reverse
"highlight VisualNOS    cterm=underline
"highlight WarningMsg   ctermfg=red
"highlight WildMenu     ctermfg=black ctermbg=yellow
