-- set leader for extra key combinations
vim.g.mapleader = ","

-- buffer switches via leader
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>s", ":e#<cr>")
