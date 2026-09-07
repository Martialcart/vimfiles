vim.opt.number = true           -- Show line numbers
vim.opt.mouse = 'a'             -- Enable mouse support
vim.opt.ignorecase = true       -- Case-insensitive searching
vim.opt.smartcase = true        -- Case-sensitive if search contains capitals
vim.opt.hlsearch = false        -- Clear highlights after search
--vim.opt.wrap = false            -- Disable line wrapping
vim.opt.tabstop = 4             -- Number of spaces tabs count for
vim.opt.shiftwidth = 4          -- Size of an indent
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.termguicolors = true    -- Enable 24-bit RGB colors
vim.opt.clipboard = 'unnamedplus' -- Sync with system clipboard


--Plugins
vim.pack.add({
  'https://github.com/mason-org/mason.nvim',  --downloads LPS's
  'https://github.com/mason-org/mason-lspconfig.nvim.git', --Configures LSP's
  'https://github.com/neovim/nvim-lspconfig', --Used by mason
  'https://github.com/tpope/vim-sleuth', --use files tab settings, if not exist use my settings
  'https://github.com/hrsh7th/nvim-cmp', --completion engine
  'https://github.com/windwp/nvim-ts-autotag.git', --rename html tags
  'https://github.com/kdheepak/lazygit.nvim.git'-- :LazyGit
})

--  LSP setup
require('mason').setup()

require('mason-lspconfig').setup( {
  ensure_installed = { "lua_ls", "ts_ls" },
  automatic_enable = true,
})

