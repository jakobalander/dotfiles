set nocompatible
set t_Co=256
set number
syntax enable
filetype indent plugin on
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileTYpe c set cinoptions=:0 foldmethod=syntax foldnestmax=1
autocmd BufWritePre *.py :%s/\s\+$//e

" Setting up Vundle - the vim plugin bundler
	let iCanHazVundle=1
     	let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
     	if !filereadable(vundle_readme)
     		echo "Installing Vundle.."
               	echo ""
        	silent !mkdir -p ~/.vim/bundle
	        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
		let iCanHazVundle=0
	endif
        set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
        Bundle 'gmarik/vundle'
	"Add your bundles here
	Bundle 'Lokaltog/vim-powerline'
	if iCanHazVundle == 0
		echo "Installing Bundles, ignore key map error messages"
		echo ""
		:BundleInstall
	endif
" Setting up Vundle - the vim plugin bundler end

" Settings for Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
