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

{ "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  { 'navarasu/onedark.nvim'},
  {
    'theprimeagen/harpoon'
  },
  {
    'mfussenegger/nvim-jdtls',
  },
  {
    'github/copilot.vim'
  },
  {
    'tpope/vim-fugitive'
  },
  {'nvim-telescope/telescope-ui-select.nvim'},
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    lazy = true,
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
  },

  { 'rose-pine/neovim', name = 'rose-pine' }
}

local opts = {}

require("lazy").setup(plugins, opts)

