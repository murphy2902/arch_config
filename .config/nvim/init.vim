" init.vim
" If you have any questions about my settings, remember to use :help <topic>

runtime! archlinux.vim


" Plugin Manager
" " "

	if empty(glob(expand('$XDG_CONFIG_HOME/nvim/autoload/plug.vim')))
	  silent !curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs
		 \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall | source $XDG_CONFIG_HOME/nvim/init.vim
	endif

	call plug#begin(expand('$XDG_CONFIG_HOME/nvim/plugged'))

	call plug#end()

so $XDG_CONFIG_HOME/vim/vimrc.conf
