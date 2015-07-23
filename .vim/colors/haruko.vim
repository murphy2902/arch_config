set background=dark
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "haruko"

hi Comment       term=NONE cterm=NONE ctermfg=DarkGrey    ctermbg=NONE gui=NONE
hi Constant      term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE gui=NONE
hi Cursor        term=NONE cterm=NONE ctermfg=LightGrey   ctermbg=NONE gui=NONE
hi Identifier    term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE gui=NONE
hi Normal        term=NONE cterm=NONE ctermfg=White       ctermbg=NONE gui=NONE
hi NonText       term=NONE cterm=NONE ctermfg=DarkBlue    ctermbg=NONE gui=NONE
hi Preproc       term=NONE cterm=NONE ctermfg=DarkGrey    ctermbg=NONE gui=NONE
hi Special       term=NONE cterm=NONE ctermfg=Magenta     ctermbg=NONE gui=NONE
hi Statement     term=NONE cterm=NONE ctermfg=LightGrey   ctermbg=NONE gui=NONE
hi Error         term=NONE cterm=NONE ctermfg=Red         ctermbg=NONE gui=NONE
hi ErrorMsg      term=NONE cterm=NONE ctermfg=Red	       ctermbg=NONE gui=NONE
hi WarningMsg    term=NONE cterm=NONE ctermfg=White       ctermbg=NONE gui=NONE
hi IncSearch     term=NONE cterm=NONE ctermfg=Blue        ctermbg=NONE gui=NONE
hi Label         term=NONE cterm=NONE ctermfg=LightGrey   ctermbg=NONE gui=NONE
hi LineNr        term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE gui=NONE
hi Search        term=NONE cterm=NONE ctermfg=Red         ctermbg=NONE gui=NONE
hi StatusLine    term=NONE cterm=NONE ctermfg=Cyan        ctermbg=NONE gui=NONE
hi StatusLineNC  term=NONE cterm=NONE ctermfg=Black       ctermbg=NONE gui=NONE
hi Title         term=NONE cterm=NONE ctermfg=White       ctermbg=NONE gui=NONE
hi Todo          term=NONE cterm=NONE ctermfg=Black       ctermbg=Yellow gui=NONE
hi Type          term=NONE cterm=NONE ctermfg=DarkGreen   ctermbg=NONE gui=NONE
hi Operator      term=NONE cterm=NONE ctermfg=Yellow      ctermbg=NONE gui=NONE
hi Visual        term=NONE cterm=NONE ctermfg=Yellow      ctermbg=NONE gui=NONE
hi DiffChange    term=NONE cterm=NONE ctermfg=Blue        ctermbg=NONE gui=NONE
hi DiffText      term=NONE cterm=NONE ctermfg=Yellow      ctermbg=NONE gui=NONE
hi DiffAdd       term=NONE cterm=NONE ctermfg=Green       ctermbg=NONE gui=NONE
hi DiffDelete    term=NONE cterm=NONE ctermfg=Red         ctermbg=NONE gui=NONE
hi Folded        term=NONE cterm=NONE ctermfg=LightGrey   ctermbg=NONE gui=NONE
hi FoldColumn    term=NONE cterm=NONE ctermfg=White       ctermbg=NONE gui=NONE

" css

"hi cssTextProp
"hi cssDefinition

" perl
"hi link perlBraces             
"hi perlRepeat            
"hi perlStatementFiledesc 
"hi perlStatementRegexp  
"hi perlMatchStartEnd   
"hi perlVarMember      
hi perlsharpbang term=NONE cterm=NONE ctermfg=Magenta     ctermbg=NONE gui=NONE
hi link perlfunctionname type   
hi link perlstatementstorage type
hi link perlstatementcontrol special
hi link perlspecialstring constant 
hi link perlsubname perlfunctionname
hi link perlvarplain nontext
hi link perlvarplain2 perlvarplain 

" sass

hi sassControl       term=NONE cterm=NONE ctermfg=DarkBlue    ctermbg=NONE gui=NONE
hi sassFunctionDecl  term=NONE cterm=NONE ctermfg=DarkBlue    ctermbg=NONE gui=NONE
hi sassFunctionName  term=NONE cterm=NONE ctermfg=DarkBlue    ctermbg=NONE gui=NONE
"hi sassVariable

" bash
hi link shvariable nontext
hi link shderefvar shvariable
hi link shoption operator
hi link shtestopr operator
hi link shquote constant

" vim

hi link vimOption nontext
