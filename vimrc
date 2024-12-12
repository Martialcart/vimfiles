"import default settings as base.
source $VIMRUNTIME/defaults.vim

set number "show line numbers
set clipboard= "use vim's clip board

"omnifunc setup
filetype plugin on

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
Plug 'scrooloose/nerdcommenter'	"comment/ uncomment
Plug 'tpope/vim-fugitive'	"git
Plug 'mattn/emmet-vim'		"emmet abreviation
Plug 'mbbill/undotree'		"git-like undohistory. Undo tab
Plug 'tpope/vim-surround'	"handles paranteses tags etc
Plug 'airblade/vim-gitgutter'	"diff markers
Plug 'tpope/vim-repeat'		"repeat with . works better with plugins
Plug 'vim-airline/vim-airline'	"Nice looking menu bars
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set omnifunc=syntaxcomplete#Complete

"syntastic recommended starter settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
