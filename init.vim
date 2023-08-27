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
"inserindo teclas de atalho
nnoremap <Space>t :find  
nnoremap <Space>f :Lex .<CR>:vertical resize -50<CR>
"buffers
nnoremap <Space>l :ls<CR>

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
        Plug 'olimorris/onedarkpro.nvim'
call plug#end()

colorscheme onedark_dark

lua << END
require('lualine').setup()
END
