" init.vim
" If you have any questions about my settings, remember to use :help <topic>

runtime! archlinux.vim


" Plugin Manager
" " "


" set runtimepath^=$XDG_CONFIG_HOME/nvim/repos/github.com/Shougo/dein.vim

" call dein#begin(expand('$XDG_CONFIG_HOME/nvim/'))
" 
" call dein#add('Shougo/dein.vim')
" 
" " Go stuff
" call dein#add('fatih/vim-go')
" 
" call dein#add('nsf/gocode')
" call dein#add('Shougo/deoplete.nvim')
" call dein#add('Shougo/deoplete-go')
" 
" call dein#add('vim-airline/vim-airline')
" call dein#add('vim-airline/vim-airline-themes')
" call dein#add('Xuyuanp/nerdtree-git-plugin')
" call dein#add('tpope/vim-fugitive') "Git features
" call dein#add('Lokaltog/powerline-fonts') " Required by airline
" call dein#add('scrooloose/nerdtree')
" call dein#add('vim-scripts/mru.vim') "<leader>ru for recently used files
" call dein#add('easymotion/vim-easymotion')
" call dein#add('justinmk/vim-syntax-extra')
" call dein#add('jvirtanen/vim-octave') "Extra octave highlighting
" call dein#add('lilydjwg/colorizer') " Color rgb text
" call dein#add('tpope/vim-endwise') "Automagically closes more stuff
" call dein#add('vim-ruby/vim-ruby')
" call dein#add('kien/rainbow_parentheses.vim')
" 
" call dein#end()
" 
" if dein#check_install()
  " call dein#install()
" endif

if empty(glob(expand('$XDG_CONFIG_HOME/nvim/autoload/plug.vim')))
  silent !curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('$XDG_CONFIG_HOME/nvim/plugged'))

Plug 'fatih/vim-go'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive' "Git features
Plug 'Lokaltog/powerline-fonts' " Required by airline
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim' "<leader>ru for recently used files
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-syntax-extra'
Plug 'jvirtanen/vim-octave' "Extra octave highlighting
Plug 'lilydjwg/colorizer' " Color rgb text
Plug 'tpope/vim-endwise' "Automagically closes more stuff
Plug 'vim-ruby/vim-ruby'
Plug 'kien/rainbow_parentheses.vim'

call plug#end()

" Abbreviations
" " "


au FileType java,c,cpp abbrev if if() {<CR><CR>}<esc>kkw
au FileType java,c,cpp,perl abbrev while while() {<CR><CR>}<esc>kkw
au FileType java,c,cpp abbrev for for() {<CR><CR>}<esc>kkwa
au FileType java,c,cpp abbrev /*<CR> /*<CR> *<CR> */<esc>kA
au FileType vim abbrev =header= "<CR>" " "<esc>kA


" Autocommands
" " "


au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
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
