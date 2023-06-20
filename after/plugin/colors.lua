-- require('onedark').setup {
--     style = 'darker',
-- }

function SetTransparentBg() 
  vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
