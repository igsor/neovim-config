
-- allow switching unsaved buffers
vim.opt.hidden = true

-- update buffer when file is changed from the outside
vim.opt.autoread = true

-- a buffer becomes hidden when it is abandoned
--vim.opt.hid = true

-- buffer switches via leader
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>e", ":e#<cr>")

-- window switches via leader
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')

-- open new vertical split bottom
vim.opt.splitbelow = true

-- open new horizontal splits right
vim.opt.splitright = true

-- use ESC in terminal mode to escape insert mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
