-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove "o"
    vim.opt.formatoptions:remove "r"
  end,
})

-- Others
vim.opt.swapfile = false
