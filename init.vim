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
set scrolloff=999
set t_Co=256
set showcmd
filetype indent on
set omnifunc=syntaxcomplete#Complete
syntax on
set cursorline
set wildmenu
set wildmode=longest:list,full

call plug#begin('~/AppData/Local/nvim/plugged')
        Plug 'morhetz/gruvbox'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ap/vim-css-color'
        Plug 'tpope/vim-surround'
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme gruvbox
let g:airlen_theme='gruvbox'

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
