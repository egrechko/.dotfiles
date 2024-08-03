-- Baseline formating settings
vim.opt_local.autoindent = true
vim.opt_local.colorcolumn = "0"
vim.opt_local.linebreak = true
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.spell = true
vim.opt_local.wrap = true
vim.opt_local.nu = false
vim.opt_local.relativenumber = false
-- don't collapse links
vim.opt_local.conceallevel = 0

-- set the color scheme
vim.cmd.colorscheme("catppuccin-latte")
