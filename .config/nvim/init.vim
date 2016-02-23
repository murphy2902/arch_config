" vimrc.conf
" If you have any questions about my settings, remember to use :help <topic>

runtime! archlinux.vim

call plug#begin('~/.config/vim/plugged')

" Go stuff
Plug 'fatih/vim-go'

Plug 'vim-airline/vim-airline' "Statusline
Plug 'vim-airline/vim-airline-themes' "Statusline
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion' "<leader><leader> motions
Plug 'garbas/vim-snipmate' " Automagically completes code blocks
Plug 'honza/vim-snippets' " Required by snipmate
Plug 'justinmk/vim-syntax-extra' " More syntax highlighting
Plug 'jvirtanen/vim-octave' "Extra octave highlighting
Plug 'Lokaltog/powerline-fonts' " Required by airline
Plug 'lilydjwg/colorizer' " Color rgb text
Plug 'MarcWeber/vim-addon-mw-utils' " Required by snipmate
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tlib_vim' " Required by snipmate
Plug 'tpope/vim-endwise' "Automagically closes more stuff
Plug 'tpope/vim-surround' "Surround text with tags and others
Plug 'tpope/vim-fugitive' "Git features
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/mru.vim' "<leader>ru for recently used files
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/rainbow_parentheses.vim'

call plug#end()


" Abbreviations
" " "


au FileType java,c,cpp abbrev if if() {<CR><CR>}<esc>kkw
au FileType java,c,cpp abbrev while while() {<CR><CR>}<esc>kkw
au FileType java,c,cpp abbrev for for() {<CR><CR>}<esc>kkwa
au FileType java,c,cpp abbrev /*<CR> /*<CR> *<CR> */<esc>kA
au FileType vim abbrev =header= "<CR>" " "<esc>kA


" Autocommands
" " "


au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au BufNewFile * call LoadTemplate()


" Colors
" " "


syntax on

" TODO: Figure out how to change this based on the system theme
colorscheme haruko


" Functions
" " "

function! LoadTemplate()
   silent! 0r ~/.config/vim/skel/tmpl.%:e

   " Highlight %VAR% placeholders with the Todo color group
   syn match Todo "%\u\+%" containedIn=ALL
endfunction

" Syntax Analysis
function! <SID>SynStack()
   if !exists("*synstack")
      return
   endif
   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" Mappings
" " "


let mapleader = "\<Space>"

nno <CR> @

nno <C-BS> bdw

" Return to visual selection when indenting
vno < <gv
vno > >gv

" Precision editing
nno <leader>c :set cul! cuc! rnu! spell!<cr>

nno <silent> ;j :bn<CR>
nno <silent> ;k :bp<CR>
nno <silent> ;q :bdelete<CR>

nno <silent> ;h :tabp<CR>
nno <silent> ;l :tabn<CR>
nno <silent> <leader>1 1gt<cr>
nno <silent> <leader>2 2gt<cr>
nno <silent> <leader>3 3gt<cr>
nno <silent> <leader>4 4gt<cr>
nno <silent> <leader>5 5gt<cr>
" Moving characters
nno L xp
nno H xP

no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

no <leader>j <C-W>j
no <leader>k <C-W>k
no <leader>h <C-W>h
no <leader>l <C-W>l

nno <leader>w :w<CR>
nno <leader>so :so %<cr>
nno <leader>ra :%s/

nno <leader>tn :tabnew<CR>
nno <leader>Tn :tabnew

nno <leader>sw :set list!<CR>

no <leader>vn :vsplit<CR>
no <leader>Vn :vsplit

no <leader>hn :split<CR>
no <leader>Hn :split

"set pastetoggle=<C>p " paste mode

" Treat long lines as break lines (useful when moving around in them)
no j gj
no k gk

nno <leader>ru :MRU<CR>
no <leader>ff :NERDTreeToggle<CR>
nno <C-S-P> :call <SID>SynStack()<CR>

nno <F15> <esc>
ino <F15> <esc>
vno <F15> <esc>
cno <F15> <esc>


" Settings
" " " "


filetype plugin indent on

set autoindent
set autoread
set cc=80
set cmdheight=1
set equalalways
set encoding=utf8
set ffs=unix,dos,mac
set foldenable
set foldmethod=marker
set foldcolumn=1
set hidden
set hlsearch
set ignorecase
set lazyredraw
set list listchars=tab:»·,trail:·
set ls=2
set magic
set modeline
set modelines=5
set nobackup
set noerrorbells
set noshowmode
set nolist
set notitle
set novisualbell
set nu
set noruler
set shiftwidth=3
set showmatch
set smartindent
set sps=best,10
set tabstop=3


" Airline
" " "


let g:airline_theme='ubaryd'
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_detect_modified=1
let g:airline_detect_paste=1

" powerline symbols
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

function! MyOverride(...)
   call a:1.add_section('StatusLine', ' ' . g:airline_section_a . ' ')
   call a:1.add_section('StatusLine2', ' ' . g:airline_section_b . ' ')
   call a:1.add_section('StatusLine3', ' %f')
   call a:1.split()
   call a:1.add_section('StatusLine2', ' ' . g:airline_section_x . ' ')
   call a:1.add_section('ErrorLine', ' ' . g:airline_section_error . ' ' . g:airline_section_warning . ' ')
   call a:1.add_section('StatusLine', ' %p%% ')

   return 1 "tells the pipeline to write the statusline with the builder
endfunction
call airline#add_statusline_func('MyOverride')


" Eclim
" " "


let g:EclimCompletionMethod = 'omnifunc'



" MRU
" " "


let MRU_File = '/home/ryan/.config/vim/.vim_mru_files'
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 15


" Nerdtree
" " "


" Closes vim if nerdtree is the only open window
" Causes error on regular nerdtree close
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Changing the arrows
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '0'
let g:NERDTreeDirArrowCollapsible = '1'

" Close nerdtree on file open
let g:NERDTreeQuitOnOpen = 1

let g:NERDTreeMouseMode = 2


" Rainbow Parentheses
" " "


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" You Complete Me
" " "


let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_global_ycm_extra_conf = '/home/ryan/.config/vim/.ycm_extra_conf.py'

" Debug
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_warning_symbol = '>'
let g:ycm_error_symbol = '>>'
let g:ycm_server_use_vim_stdout = 1
