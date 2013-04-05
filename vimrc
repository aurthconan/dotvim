source $VIMRUNTIME/vimrc_example.vim

set nu
set hlsearch

set nobackup
set noswapfile

colorscheme evening
set bg=dark

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8
set fileencoding=utf-8

set tabstop=4
set expandtab
set shiftwidth=4

nnoremap <silent> <F8> :TlistToggle<CR>
" set vb t_vb=
set noeb 

autocmd FileType c,cpp,java,php,py autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType py set noexpandtab
