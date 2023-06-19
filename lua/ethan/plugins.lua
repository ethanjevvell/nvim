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
  },
  'navarasu/onedark.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'theprimeagen/harpoon'
  },
  {
    'tpope/vim-fugitive'
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    lazy = true,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason-lspconfig.nvim' },
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
    },
  },

  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
    },
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
  },
  {
    'hrsh7th/nvim-cmp',
  },
  {
    'neovim/nvim-lspconfig',
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'mfussenegger/nvim-dap',
  },
  {
    'microsoft/vscode-js-debug',
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },
  {
    'mxsdev/nvim-dap-vscode-js',
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },
  {
    'windwp/nvim-autopairs',
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap' },
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
  },

  {
    'MunifTanjim/prettier.nvim',
  },

  {
    'numToStr/Comment.nvim',
  },

  {
    'folke/zen-mode.nvim',
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
