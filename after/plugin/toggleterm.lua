
require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    hide_numbers = true,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "horizontal",
    shell = vim.o.shell,
}

local Terminal  = require('toggleterm.terminal').Terminal

-- create terminals for each number key 1-9
local terminals = {}
for i=1,9 do
    terminals[i] = Terminal:new({ cmd = vim.o.shell, count = i, hidden = true })
end

-- create keybindings for those terminals
for i, term in ipairs(terminals) do
    _G["term"..i.."_toggle"] = function() term:toggle() end
    vim.api.nvim_set_keymap("n", "<leader>"..i, "<cmd>lua term"..i.."_toggle()<CR>", {noremap = true, silent = true})
end

-- function for toggling all terminals that are currently open
_G.toggle_all_terminals = function()
    for _, term in ipairs(terminals) do
        if term:is_open() then
            term:toggle()
        end
    end
end
vim.api.nvim_set_keymap("n", "<leader>0", "<cmd>lua toggle_all_terminals()<CR>", {noremap = true, silent = true})
