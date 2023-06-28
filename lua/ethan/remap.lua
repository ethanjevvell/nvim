
local keymap = vim.keymap.set;
local opts = { noremap = true, silent = true }

-- Set the leader key to space
vim.g.mapleader = " "
-- test
-- Normal mode: Execute Ex command with space + pv
keymap("n", "<leader>pv", vim.cmd.Ex, opts)

-- Visual mode: Move selected lines one line down with J
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Visual mode: Move selected lines one line up with K
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Normal mode: Join lines without moving the cursor with J
keymap("n", "J", "mzJ`z", opts)

-- Normal mode: Scroll down half a screen and center the line with Ctrl+d
keymap("n", "<C-d>", "<C-d>zz", opts)

-- Normal mode: Scroll up half a screen and center the line with Ctrl+u
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Visual mode: Replace the selected text with the contents of the unnamed register with space + p
keymap("x", "<leader>p", [["_dP]], opts)

-- Normal and visual mode: Copy the selected text into the system clipboard with space + y
keymap({"n", "v"}, "<leader>y", [["+y]], opts)

-- Normal mode: Copy the whole line into the system clipboard with space + Y
keymap("n", "<leader>Y", [["+Y]], opts)

-- Normal and visual mode: Delete the selected text without yanking it with space + d
keymap({"n", "v"}, "<leader>d", [["_d]], opts)

-- Insert mode: Map Ctrl+c to Escape
keymap("i", "<C-c>", "<Esc>", opts)

-- Normal mode: Format the buffer with space + f
keymap("n", "<leader>f", '<cmd>:Prettier<CR>', opts)

-- Normal mode: Go to the next error with Ctrl+k
keymap("n", "<C-k>", "<cmd>cnext<CR>zz", opts)

-- Normal mode: Go to the previous error with Ctrl+j
keymap("n", "<C-j>", "<cmd>cprev<CR>zz", opts)

-- Normal mode: Go to the next location with space + k
keymap("n", "<leader>k", "<cmd>lnext<CR>zz", opts)

-- Normal mode: Go to the previous location with space + j
keymap("n", "<leader>j", "<cmd>lprev<CR>zz", opts)

-- Normal mode: Replace the word under the cursor in the whole file with another one with space + s
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Normal mode: Make the current file executable with space + x
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Normal mode: Swap ; for :
keymap("n", ";", ":", opts)

-- Normal mode: Highlight the entire current buffer
keymap('n', '<C-a>', ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ggVG", true, true, true), "n", true)<CR>', opts)

-- Normal mode: Paste from system clipboard
keymap("n", '"p', '"+p', opts)

-- Normal mode: Copy to system clipboard
keymap("v", '"y', '"+y', opts)

-- Always save every open buffer with :w
keymap("c", "w<CR>", "wa<CR>", opts)

-- Always save all buffers before any quit command
vim.cmd("autocmd QuitPre * :wa")

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resizing
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

