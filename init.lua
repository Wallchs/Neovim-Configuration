----------------------------------------
-- Neovim Lua configuration (init.lua)
----------------------------------------

-- Leader
vim.g.mapleader = ' '

-- General settings
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.encoding = 'utf-8'
opt.ignorecase = true
opt.smartcase = true
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.showmatch = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.hlsearch = true
opt.incsearch = true
opt.spell = true
opt.spelllang = { 'pt_br' }
opt.scrolloff = 8
-- opt.colorcolumn = '80'
opt.termguicolors = true
opt.cursorline = true
opt.showcmd = true
opt.wildmenu = true
opt.wildmode = 'longest:full,full'
opt.path:append('**')

-- Filetype and plugins
vim.cmd [[
  filetype plugin indent on
  syntax on
]]

-- Key mappings helper
local map = vim.api.nvim_set_keymap
local opts_nore = { noremap = true, silent = true }

-- Telescope shortcuts
map('n', '<Leader>f', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts_nore)
map('n', '<Leader>j', "<cmd>lua require('telescope.builtin').jumplist()<CR>", opts_nore)
map('n', '<Leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts_nore)
map('n', '<Leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts_nore)
map('n', '<Leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts_nore)
map('n', '<Leader>fp', "<cmd>lua require('telescope.builtin').git_files()<CR>", opts_nore)
map('n', '<Leader>fr', "<cmd>lua require('telescope.builtin').resume()<CR>", opts_nore)
map('n', '<Leader>fd', "<cmd>lua require('telescope.builtin').diagnostics()<CR>", opts_nore)

--erros navegations
map('n', '<Leader>e', "<cmd>CocList diagnostics<CR>", opts_nore)

-- Buffers, marks, etc
map('n', '<Leader>b', '<cmd>Telescope buffers<CR>', opts_nore)
map('n', '<Leader>m', '<cmd>Telescope marks<CR>', opts_nore)
map('n', '<Leader>y', 'ggVG"+y', opts_nore)
map('n', '<Leader>h', '<cmd>TSBufToggle highlight<CR>', opts_nore)


-- Atalho personalizado para o Flash Jump usando Leader + gw
vim.keymap.set({ "n", "x", "o" }, "<leader>gw", function() 
  require("flash").jump() 
end, { desc = "Flash Jump", noremap = true, silent = true })


-- Git
map('n', '<Leader>gs', '<cmd>lua require("gitsigns").toggle_current_line_blame()<CR>', opts_nore)

-- Vim commands aliases
vim.cmd [[
  cabbrev W w
  cabbrev Wq wq
  cabbrev wQ wq
  cabbrev WQ wq
  cabbrev Q q
]]

-- Prettier command (Coc)
vim.api.nvim_create_user_command('Prettier', "call CocAction('runCommand', 'prettier.formatFile')", {})

-- Plugins via vim-plug
vim.cmd [[
  call plug#begin('~/AppData/Local/nvim/plugged')

  \" Utilities
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'numToStr/Comment.nvim'

  \" Telescope
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

  \" surrounding
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'

  \" File explorer & icons
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'

   \"Colorschemes
  Plug 'folke/tokyonight.nvim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

  \" Autocomplete & LSP
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  \" Statusline
  Plug 'nvim-lualine/lualine.nvim'

  \"navegation faster
  Plug 'folke/flash.nvim'

  call plug#end()
]]

-- Setup plugins

-- Gitsigns
require('gitsigns').setup()


-- Comment.nvim
require('Comment').setup()

-- Nvim-tree
require('nvim-tree').setup({ view = { width = 30 } })

-- Colorscheme
vim.cmd [[colorscheme tokyonight]]

-- Lualine setup
require('lualine').setup {
  options = { theme = 'tokyonight' }
}

-- Disable built-in python3 provider
vim.g.loaded_python3_provider = 1

