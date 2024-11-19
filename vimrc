"import default settings as base.
source $VIMRUNTIME/defaults.vim

set number "show line numbers
set clipboard= "use vim's clip board

"omnifunc setup
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"tab setup 1 recommended
set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab

set autoindent

"Highlight search
set hls

"vimplug
call plug#begin()
Plug 'maxmellon/vim-jsx-pretty'	"jsx support
Plug 'scrooloose/syntastic'	"error higlight
Plug 'tpope/vim-fugitive'	"git
Plug 'mattn/emmet-vim'		"emmet abreviation
Plug 'mbbill/undotree'		"git-like undohistory. Undo tab
"Plug 'w0rp/ale'			"lsp integration
call plug#end()

"ale settings
"let g:ale_completion_autimport = 1

"****tips fra Christer*************
"vimium

"mapleader is lead key for commands(like ctrl is)
let mapleader = " "

"custom mapping
nnoremap <leader>w :w<cr>
inoremap jk <esc>

"Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <ESC>:m .+1<CR>==gi
inoremap <A-k> <ESC>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
