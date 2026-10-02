
-- set leader for extra key combinations
vim.g.mapleader = ","

-- use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- allow the mouse to be used in nvim
vim.opt.mouse = 'a'

-- Disable noise
vim.opt.errorbells = false
vim.opt.visualbell = false

-- don't redraw while executing macros (good performance config)
--vim.opt.lazyredraw = true

-- time for mapped sequence to complete [ms]
vim.opt.tm = 500

-- history
vim.opt.history = 1000

-- height of the command bar
vim.opt.cmdheight = 1
