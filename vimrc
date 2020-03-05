set nocompatible
set t_Co=256
set number
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
set splitbelow
set splitright
syntax enable
filetype indent plugin on
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileTYpe c set cinoptions=:0 foldmethod=syntax foldnestmax=1
au FileType h set cinoptions=:0 foldmethod=syntax foldnestmax=1
au FileType cpp set cinoptions=:0 foldmethod=syntax foldnestmax=1
au FileType yaml set tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType javascript set tabstop=2 expandtab shiftwidth=2 softtabstop=2

autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.yaml :%s/\s\+$//e

set rtp+=~/.vim/bundle/vundle/
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
	Bundle 'bling/vim-airline'
	Bundle 'tpope/vim-fugitive'
	Bundle 'davidhalter/jedi-vim'
	if iCanHazVundle == 0
		echo "Installing Bundles, ignore key map error messages"
		echo ""
		:BundleInstall
	endif
" Setting up Vundle - the vim plugin bundler end

" Settings for airline
set laststatus=2
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
let g:airline_powerline_fonts = 1
