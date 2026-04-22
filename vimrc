set nocompatible "for polyglot, needs to be at top, to not mess with other things

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
Plug 'neoclide/coc.nvim', {'branch': 'release'} "coc lsp
Plug 'scrooloose/syntastic'	"error higlight
Plug 'sheerun/vim-polyglot'	"Language highlight package
Plug 'scrooloose/nerdcommenter'	"comment/ uncomment = space c space
Plug 'tpope/vim-fugitive'	"git
Plug 'mattn/emmet-vim'		"emmet abreviation
"Plug 'mbbill/undotree'		"git-like undohistory. Undo tab
Plug 'tpope/vim-surround'	"handles paranteses tags etc
Plug 'airblade/vim-gitgutter'	"diff markers
Plug 'tpope/vim-repeat'		"repeat with . works better with plugins
Plug 'vim-airline/vim-airline'	"Nice looking menu bars
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"default autocomplete
set omnifunc=syntaxcomplete#Complete 

"**********LSP***********************************'
"mappings CoC
"ctrl + space triggers CoC autocomplete
inoremap <silent><expr> <C-space> coc#refresh()
"insert suggestion with enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"
"coc mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"essential vim settings for coc
set encoding=utf-8
set hidden
"set nobackup
"set nowritebackup
set updatetime=300
set signcolumn=yes
"*****************************LSP*****************

"syntastic recommended starter settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"synstastic settings 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"****tips fra Christer*************
"vimium

"mapleader is lead key for commands(like ctrl is)
let mapleader = " "

"Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <ESC>:m .+1<CR>==gi
inoremap <A-k> <ESC>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
