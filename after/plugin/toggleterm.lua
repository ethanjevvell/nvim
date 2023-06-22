require("toggleterm").setup {
  size = 20,
  shade_filetypes = {},
  shade_terminals = true,
  hide_numbers = true,
  start_in_insert = true,
  insert_mappings = false,
  persist_size = true,
  direction = "horizontal",
  shell = vim.o.shell,
}

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.api.nvim_set_keymap("n", "<C-z>7", ":1ToggleTerm size=20 direction=horizontal<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<C-z>8", ":2ToggleTerm size=20 direction=horizontal<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<C-z>9", ":3ToggleTerm size=20 direction=horizontal<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<C-z>0", ":4ToggleTerm size=20 direction=horizontal<CR>", {silent = true})


local Terminal = require('toggleterm.terminal').Terminal
local htop = Terminal:new({ cmd = "htop", hidden = true, direction = "float" })

function _HTOP_TOGGLE()
  htop:toggle()
end

vim.api.nvim_set_keymap("n", "<C-z>h", "<cmd>lua _HTOP_TOGGLE()<CR>", {silent = true})
