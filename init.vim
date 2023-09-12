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

set path+=** "using :find to search files
set scrolloff=999
set t_Co=256
set showcmd
filetype indent on
set omnifunc=syntaxcomplete#Complete
syntax on
set cursorline
set wildmenu
set wildmode=longest:list,full

"inserindo teclas de atalho
nnoremap <Space>t :find
nnoremap <Space>f :Lex .<CR>:vertical resize 30<CR>
"buffers
nnoremap <Space>b :ls<CR>:buffer
nnoremap <Space>m :marks<CR>
"Ativando treesiter
nnoremap <Space>h :TSEnable highlight<CR>

call plug#begin('~/AppData/Local/nvim/plugged')
        Plug 'ap/vim-css-color'
        Plug 'tpope/vim-surround'
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'williamboman/mason.nvim'
        Plug 'williamboman/mason-lspconfig.nvim'
        Plug 'neovim/nvim-lspconfig'
        Plug 'jiangmiao/auto-pairs'
        Plug 'olimorris/onedarkpro.nvim'
call plug#end()

colorscheme onedark_dark

cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

lua << END
require('mason').setup()
require('mason-lspconfig').setup()
require 'lspconfig'.pyright.setup{}
END
