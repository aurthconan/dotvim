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

" clear any blank char at the end of a line
autocmd FileType c,cpp,java,php,py,cu autocmd BufWritePre <buffer> :%s/\s\+$//e

autocmd FileType py set noexpandtab

filetype plugin on

" import pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
