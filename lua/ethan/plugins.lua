local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local plugins = {
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
  },

  'navarasu/onedark.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = true,
  },
  {
    'theprimeagen/harpoon', lazy = true
  },
  {
    'tpope/vim-fugitive'
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    version = 'v2.x',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip'
    },
    lazy = true
  },

  {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = true
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = true
  },

  {
    'mfussenegger/nvim-dap',
    lazy = true
  },

  {
    'microsoft/vscode-js-debug',
    lazy = true,
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },

  {
    'mxsdev/nvim-dap-vscode-js',
    lazy = true
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons', lazy = true }
  },

  {
    'windwp/nvim-autopairs',
    lazy = true
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap' },
    lazy = true
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    lazy = true
  },

  {
    'numToStr/Comment.nvim',
    lazy = true
  },

  {
    'folke/zen-mode.nvim',
    lazy = true
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
