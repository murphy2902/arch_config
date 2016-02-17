set background=dark
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "haruko"

if( &t_Co >= 255 || $TERM =~? "256color" )
   hi Comment       term=none cterm=none ctermfg=DarkGrey    ctermbg=none
   hi ColorColumn   term=none cterm=none ctermfg=none        ctermbg=DarkGrey
   hi Constant      term=none cterm=none ctermfg=DarkRed     ctermbg=none
   hi Cursor        term=none cterm=none ctermfg=LightGrey   ctermbg=none
   hi DiffAdd       term=none cterm=none ctermfg=Green       ctermbg=none
   hi DiffChange    term=none cterm=none ctermfg=Blue        ctermbg=none
   hi DiffDelete    term=none cterm=none ctermfg=Red         ctermbg=none
   hi DiffText      term=none cterm=none ctermfg=Yellow      ctermbg=none
   hi Directory     term=none cterm=none ctermfg=blue
   hi FoldColumn    term=none cterm=none ctermfg=White       ctermbg=none
   hi Folded        term=none cterm=none ctermfg=LightGrey   ctermbg=none
   hi Function      term=none cterm=none ctermfg=DarkGreen   ctermbg=none
   hi Identifier    term=none cterm=none ctermfg=DarkRed     ctermbg=none
   hi Error         term=none cterm=none ctermfg=Red         ctermbg=none
   hi ErrorMsg      term=none cterm=none ctermfg=Red         ctermbg=none
   hi IncSearch     term=none cterm=none ctermfg=Blue        ctermbg=none
   hi Label         term=none cterm=none ctermfg=LightGrey   ctermbg=none
   hi LineNr        term=none cterm=none ctermfg=DarkRed     ctermbg=none
   hi NonText       term=none cterm=none ctermfg=DarkBlue    ctermbg=none
   hi Normal        term=none cterm=none ctermfg=White       ctermbg=none
   hi Operator      term=none cterm=none ctermfg=Yellow      ctermbg=none
   hi Preproc       term=none cterm=none ctermfg=DarkGrey    ctermbg=none
   hi Search        term=none cterm=none ctermfg=Red         ctermbg=none
   hi Special       term=none cterm=none ctermfg=Magenta     ctermbg=none
   hi Statement     term=none cterm=none ctermfg=LightGrey   ctermbg=none
   hi Title         term=none cterm=none ctermfg=White       ctermbg=none
   hi Todo          term=none cterm=none ctermfg=Black       ctermbg=Yellow
   hi Type          term=none cterm=none ctermfg=DarkGreen   ctermbg=none
   "hi VertSplit
   hi Visual        term=none cterm=none ctermfg=Yellow      ctermbg=none
   "hi VisualNOS
   hi WarningMsg    term=none cterm=none ctermfg=red         ctermbg=none
   "hi WildMenu
endif

" Status stuff
hi ErrorLine     term=none cterm=none ctermfg=Black          ctermbg=Red
hi StatusLine    term=none cterm=none ctermfg=Black          ctermbg=darkred
hi StatusLine2   term=none cterm=none ctermfg=Black          ctermbg=darkgreen
hi StatusLine3   term=none cterm=none ctermfg=Black          ctermbg=darkblue

" C

hi link cbraces normal
hi link cdelimiter normal
hi link cstorageclass nontext
hi link ctype type

" css

"hi cssTextProp
"hi cssDefinition

" perl

hi link perlsharpbang special
hi link perlfunctionname type
hi link perlstatementstorage type
hi link perlstatementcontrol special
hi link perlspecialstring constant
hi link perlsubname perlfunctionname
hi link perlvarplain nontext
hi link perlvarplain2 perlvarplain
hi link perlfiledescstatement special
hi link perlfiledescread special

" sass

hi sassControl       term=none cterm=none ctermfg=DarkBlue    ctermbg=none gui=none
hi link sassFunctionDecl function
hi link sassFunctionName function

" bash

hi link shvariable nontext
hi link shderefvar shvariable
hi link shoption operator
hi link shtestopr operator
hi link shquote constant

" Octave

hi link octaveFunction statement
hi link octavearithmeticoperator operator
hi link octavequeryvar nontext
hi link octaveuservar nontext

" Python

hi link pythonfunction type

" vim

hi link vimftoption nontext
hi link vimparensep text
hi link vimOption nontext
hi link vimuserfunc function
"hi link vimsetequal operator

" xml
hi link xmlattrib nontext
hi link xmltag statement

