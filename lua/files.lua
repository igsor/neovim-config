
-- unicode
vim.opt.encoding = "utf-8"

-- use Unix as the standard file type
vim.opt.fileformats = "unix,dos,mac"

-- enable filetype plugins
vim.opt.filetype.plugin = true

-- turn off backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.wb = false

-- trim trailing whitespaces on save
vim.g.strip_whitespace_on_save = true
vim.g.strip_whitespace_confirm = false

-- fast saving
vim.keymap.set("n", "<leader>w", ":w!<cr>")
vim.keymap.set("n", "<leader>x", ":x!<cr>")
