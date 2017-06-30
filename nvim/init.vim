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

		call plug#end()
	endif

so $XDG_CONFIG_HOME/vim/vimrc.conf

