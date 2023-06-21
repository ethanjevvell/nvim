-- Set the leader key to space
vim.g.mapleader = " "
-- test
-- Normal mode: Execute Ex command with space + pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Visual mode: Move selected lines one line down with J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Visual mode: Move selected lines one line up with K
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Normal mode: Join lines without moving the cursor with J
vim.keymap.set("n", "J", "mzJ`z")

-- Normal mode: Scroll down half a screen and center the line with Ctrl+d
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Normal mode: Scroll up half a screen and center the line with Ctrl+u
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Visual mode: Replace the selected text with the contents of the unnamed register with space + p
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Normal and visual mode: Copy the selected text into the system clipboard with space + y
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Normal mode: Copy the whole line into the system clipboard with space + Y
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Normal and visual mode: Delete the selected text without yanking it with space + d
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Insert mode: Map Ctrl+c to Escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Normal mode: Format the buffer with space + f
vim.keymap.set("n", "<leader>f", '<cmd>:Prettier<CR>')

-- Normal mode: Go to the next error with Ctrl+k
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Normal mode: Go to the previous error with Ctrl+j
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Normal mode: Go to the next location with space + k
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Normal mode: Go to the previous location with space + j
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Normal mode: Replace the word under the cursor in the whole file with another one with space + s
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Normal mode: Make the current file executable with space + x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Normal mode: Swap ; for :
vim.keymap.set("n", ";", ":", {silent = true})

-- Normal mode: Highlight the entire current buffer
vim.api.nvim_set_keymap('n', '<C-a>', ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ggVG", true, true, true), "n", true)<CR>', {noremap = true, silent = true})

-- Normal mode: Paste from system clipboard
vim.keymap.set("n", '"p', '"+p', {silent = true})

-- Normal mode: Copy to system clipboard
vim.keymap.set("v", '"y', '"+y', { silent = true })

-- Always save every open buffer with :w
vim.api.nvim_set_keymap("c", "w<CR>", "wa<CR>", { noremap = false})

-- Always save all buffers before any quit command
vim.cmd("autocmd QuitPre * :wa")
