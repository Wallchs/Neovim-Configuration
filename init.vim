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
        Plug 'lukas-reineke/indent-blankline.nvim', {'main': 'ibl', 'opts': {}}
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'jiangmiao/auto-pairs'
        Plug 'ollykel/v-vim'
        Plug 'williamboman/mason.nvim'
        Plug 'williamboman/mason-lspconfig.nvim'
        Plug 'neovim/nvim-lspconfig'
        "colorscheme
        Plug 'folke/tokyonight.nvim'
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

call plug#end()

colorscheme gruvbox-baby


cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

lua << END
require("mason").setup()
require("mason-lspconfig").setup()


local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

END

let g:loaded_python3_provider = 1
