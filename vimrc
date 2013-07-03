set number
syntax on
filetype indent plugin on
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileTYpe c set cinoptions=:0 foldmethod=syntax foldnestmax=1
autocmd BufWritePre *.py :%s/\s\+$//e
