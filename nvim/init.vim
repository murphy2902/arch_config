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
		Plug 'scrooloose/syntastic'
		Plug 'tpope/vim-endwise' "Automagically closes more stuff
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

		" Base64
		Plug 'christianrondeau/vim-base64'

		" CSV
		Plug 'chrisbra/csv.vim'

		" Go
		Plug 'fatih/vim-go'
		Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
		Plug 'zchee/deoplete-go', { 'do': 'make'}

		" Linux C
		Plug 'vivien/vim-linux-coding-style'

		" Jupyter
		Plug 'szymonmaszke/vimpyter'

		" Markdown
		Plug 'godlygeek/tabular' " Dependency
		Plug 'sedm0784/vim-you-autocorrect'
		Plug 'plasticboy/vim-markdown'

		" Scala
		Plug 'derekwyatt/vim-scala'

		" LaTeX
		Plug 'vim-latex/vim-latex'

		" Tmux
		Plug 'tmux-plugins/vim-tmux'

		" Octave
		Plug 'jvirtanen/vim-octave'

		" Protobuf
		Plug 'uarun/vim-protobuf'

		" Python
		Plug 'zchee/deoplete-jedi'
		Plug 'plytophogy/vim-virtualenv'

		" External tool interfacing
		Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug 'tpope/vim-fugitive' "Git features
		Plug 'mileszs/ack.vim'
		Plug 'airblade/vim-gitgutter'

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

		" LiveCoding
		Plug 'supercollider/scvim'
		Plug 'tidalcycles/vim-tidal'

		call plug#end()
	endif

so $XDG_CONFIG_HOME/vim/vimrc.conf


" Deoplete
" " "

let g:deoplete#enable_at_startup = 1

" vim-tidal
" " "

let g:tidal_target = "terminal"
