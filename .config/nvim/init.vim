" init.vim
" If you have any questions about my settings, remember to use :help <topic>

runtime! archlinux.vim


" Plugin Manager
" " "


if empty(glob(expand('$XDG_CONFIG_HOME/nvim/autoload/plug.vim')))
  silent !curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('$XDG_CONFIG_HOME/nvim/plugged'))

Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '$XDG_CONFIG_HOME/nvim/plugged/gocode/vim/symlink.sh' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Lokaltog/powerline-fonts' " Required by airline
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/mru.vim' 
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-syntax-extra'
Plug 'jvirtanen/vim-octave' 
Plug 'lilydjwg/colorizer' 
Plug 'tpope/vim-endwise' "Automagically closes more stuff
Plug 'tpope/vim-fugitive' "Git features
Plug 'vim-ruby/vim-ruby'
Plug 'kien/rainbow_parentheses.vim'

call plug#end()


" Abbreviations
" " "

au FileType java,c,cpp abbrev /*<CR> /*<CR> *<CR> */<esc>kA
au FileType vim abbrev =header= "<CR>" " "<esc>kA


" Autocommands
" " "


au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au FileType go setlocal noexpandtab
au BufNewFile * call LoadTemplate()
au FileType sh,bash,perl,python,ruby nno <leader>ex :! chmod +x %<CR>


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

" Run files from vim
au FileType perl nno <leader><CR> :! perl %<CR>
au FileType perl nno <leader>'<CR> :! perl %

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

nno <silent> <leader>ru :MRU<CR>
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
set exrc
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
set secure
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


" Deoplete
" " "


let g:deoplete#enable_at_startup = 1


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


no <leader>ff :NERDTreeToggle<CR>
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


" Syntastic
" " "


let g:syntastic_perl_checkers = 'perl'
let g:syntastic_enable_perl_checker = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" vim-go
" " "


au FileType go nno <leader>grr <Plug>(go-run)
au FileType go nno <leader>grt :GoRun<CR>
au FileType go nno <Leader>grs <Plug>(go-run-split)
au FileType go nno <Leader>grv <Plug>(go-run-vertical)
au FileType go nno <leader>gb <Plug>(go-build)
au FileType go nno <leader>gt <Plug>(go-test)
au FileType go nno <leader>gc <Plug>(go-coverage)
au FileType go nno <Leader>gds <Plug>(go-def-split)
au FileType go nno <Leader>gdv <Plug>(go-def-vertical)
au FileType go nno <Leader>gdt <Plug>(go-def-tab)
au FileType go nno <Leader>gd <Plug>(go-doc)
au FileType go nno <Leader>gv <Plug>(go-doc-vertical)
au FileType go nno <Leader>gb <Plug>(go-doc-browser)
au FileType go nno <Leader>gs <Plug>(go-implements)
au FileType go nno <Leader>gi <Plug>(go-info)
au FileType go nno <Leader>ge <Plug>(go-rename)

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

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
