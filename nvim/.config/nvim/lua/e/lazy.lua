local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- fuzzy file search
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- color scheme
    {
        'rose-pine/neovim', name = 'rose-pine'
    },
    -- parser for better syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
    -- harpoon: useful tool for jumping between files frequently
    'theprimeagen/harpoon',
    -- undootree
    'mbbill/undotree',
    -- git wrapper for vim
    'tpope/vim-fugitive',
    -- lsp support
    {
	  'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      dependencies = {
        'neovim/nvim-lspconfig',
       -- {
       --     'williamboman/mason.nvim', build = ':MasonUpdate', dependencies = {
       --         'williamboman/mason-lspconfig.nvim',
       --     }
       -- },
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
      },
    },
})
