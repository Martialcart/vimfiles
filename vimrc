"import default settings as base.
source $VIMRUNTIME/defaults.vim

set number "show line numbers
set clipboard= "use vim's clip board

"omnifunc setup
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"tab setup
set softtabstop=4

"vimplug
call plug#begin()
Plug 'scrooloose/syntastic'	"error higlight
Plug 'tpope/vim-fugitive'	"git
Plug 'mattn/emmet-vim'		"emmet abreviation
Plug 'mbbill/undotree'		"git-like undohistory. Undo tab
call plug#end()





"****tips fra kristoffer*************
"vimium
"ll/undotree'undo tree

"mapleader is lead key for commands(like ctrl is)
let mapleader = " "

"custom mapping
nnoremap <leader>w :w<cr>
inoremap jk <esc>
