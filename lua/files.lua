
-- turn off backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.wb = false

-- fast saving
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>x", ":x!<cr>")
