-- use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- allow the mouse to be used in nvim
vim.opt.mouse = 'a'

-- verbatim paste - has been removed from nvim (use vim.opt.paste = true|false if need be)
--vim.opt.pastetoggle = "<F2>"

-- use ESC in terminal mode to escape insert mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
