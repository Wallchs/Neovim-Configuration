set nu
set relativenumber
set ic
set nobackup
set showmatch
set tabstop=4
set softtabstop=4
set smartindent
set hlsearch
set incsearch
set expandtab
set noswapfile

set path=** "using :find to search files

set t_Co=256
set showcmd
filetype indent on
syntax on
set cursorline
set wildmenu
set wildmode=longest:list,full

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
let g:airlen_theme='gruvbox'
