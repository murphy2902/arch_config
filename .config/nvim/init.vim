" TODO: Stop deoplete from opening new split for definitions
" TODO: Better deoplete mappings
" TODO: Configure deoplete in general

" init.vim
" If you have any questions about my settings, remember to use :help <topic>

runtime! archlinux.vim


" Plugin Manager
" " "

	if has('nvim')
		if empty(glob(expand('$XDG_CONFIG_HOME/nvim/autoload/plug.vim')))
		  silent !curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs
			 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		  autocmd VimEnter * PlugInstall | source $XDG_CONFIG_HOME/nvim/init.vim
		endif

		call plug#begin(expand('$XDG_CONFIG_HOME/nvim/plugged'))

		function! DoRemote(arg)
			UpdateRemotePlugins
		endfunction

		" Autocompletion
		Plug 'Shougo/deoplete.nvim', {'do': function('DoRemote') }
		Plug 'zchee/deoplete-go', {'do': 'make'}
		Plug 'scrooloose/syntastic'
		Plug 'tpope/vim-endwise' "Automagically closes more stuff

		" Go
		Plug 'fatih/vim-go'

		" Tmux
		Plug 'tmux-plugins/vim-tmux'

		" Octave
		Plug 'jvirtanen/vim-octave'

		" External tool interfacing
		Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug 'tpope/vim-fugitive' "Git features
		Plug 'mileszs/ack.vim'

		" Vim specific stuff
		Plug 'tpope/vim-fireplace'
		Plug 'tpope/vim-surround'
		Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'scrooloose/nerdtree'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'vim-scripts/mru.vim'
		Plug 'easymotion/vim-easymotion'
		Plug 'justinmk/vim-syntax-extra'
		Plug 'lilydjwg/colorizer'
		Plug 'vim-ruby/vim-ruby'

		call plug#end()
	endif

so $XDG_CONFIG_HOME/vim/vimrc.conf


" Deoplete
" " "

	let g:deoplete#enable_at_startup=1
	let g:deoplete#max_list=5

	inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"

	" Closes autocomplete popup AND inserts newline on <CR>
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function() abort
	  return deoplete#mappings#close_popup() . "\<CR>"
	endfunction


" Deoplete-Go
" " "

	let g:deoplete#sources#go#gocode_binary=''
	let g:deoplete#sources#package_dot=0
	let g:deoplete#sources#go#sort_class=[]
	let g:deoplete#sources#go#use_cache=0
	let g:deoplete#sources#go#json_directory=''
	let g:deoplete#sources#go#cgo=0

