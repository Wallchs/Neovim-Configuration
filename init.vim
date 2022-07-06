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
        Plug 'ap/vim-css-color'
        Plug 'tpope/vim-surround'
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'nvim-lua/plenary.nvim'
        Plug 'mattn/emmet-vim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'jiangmiao/auto-pairs'
        Plug 'kyazdani42/nvim-tree.lua'
        Plug 'ryanoasis/vim-devicons'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
        Plug 'romgrk/barbar.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'nvim-lualine/lualine.nvim'
call plug#end()

colorscheme tokyonight
set bg=dark

nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap ;f :Telescope find_files<CR>
"set guifont=Ubuntu\ Nerd\ Font:h11

nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

"Status bar configuration  and lua config files
lua << END
require('lualine').setup()
require("nvim-tree").setup()
END 
