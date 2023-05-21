set nu
set encoding=utf-8
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
        Plug 'ap/vim-css-color'
        Plug 'tpope/vim-surround'
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'nvim-lua/plenary.nvim'
        Plug 'mattn/emmet-vim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'ryanoasis/vim-devicons'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'nvim-lualine/lualine.nvim'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        "Autocomplete
        Plug 'Exafunction/codeium.vim'
        call plug#end()

colorscheme catppuccin
set bg=dark

nnoremap <C-t> :find
nnoremap ;f :Lex .<CR>
let g:codeium_no_map_tab = v:true

"set guifont=Ubuntu\ Nerd\ Font:h11
lua << END
require('lualine').setup()
END
