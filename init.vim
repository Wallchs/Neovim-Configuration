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
set spell
setlocal spell spelllang=pt_br

set path+=** "using :find to search files
set scrolloff=888
set t_Co=256
set showcmd
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
syntax on
set cursorline
set wildmenu
set wildmode=longest:list,full

"inserindo teclas de Atalho
nnoremap <Space>t :find
nnoremap <Space>f :Telescope find_files<CR>
"buffers
nnoremap <Space>b :Telescope buffers<CR>
nnoremap <Space>m :Telescope marks<CR>
nnoremap <Space>h :TSEnable highlight<CR>
" ggVG"+y copia todo o conteÃºdo do arquivo
nnoremap <Space>y ggVG"+y

call plug#begin('~/AppData/Local/nvim/plugged')
        Plug 'ap/vim-css-color'
        Plug 'tpope/vim-surround'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'jiangmiao/auto-pairs'
        Plug 'ollykel/v-vim'
        "colorscheme
        Plug 'folke/tokyonight.nvim'
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
        Plug 'scrooloose/nerdtree'
        Plug 'EdenEast/nightfox.nvim'  
        "Autocompletar
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
        " or                                , { 'branch': '0.1.x' }
        Plug 'nvim-tree/nvim-web-devicons'
        Plug 'nvim-lualine/lualine.nvim'
call plug#end()

colorscheme nightfox


cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:loaded_python3_provider = 1
lua << END
require('lualine').setup()

END
