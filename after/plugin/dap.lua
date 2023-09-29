local dap = require("dap")

-- Set keymaps to control the debugger
vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
vim.keymap.set('n', '<leader>B', function()
  require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)

dap.configurations.java = {
  {
    type = 'java';
    request = 'launch';
    name = "Debug (Attach) - Remote";
    hostName = "127.0.0.1";
    port = 5005;
  },
}
