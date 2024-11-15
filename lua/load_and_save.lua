-- update buffer when file is changed from the outside
vim.opt.autoread = true

-- turn off backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.wb = false

-- allow switching unsaved files
vim.opt.hidden = true

-- fast saving
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>x", ":x!<cr>")
