
---
-- cursor and navigation
---

-- show absolute number
vim.opt.number = true

-- add numbers to each line on the left side
--vim.opt.relativenumber = true

-- highlight cursor line underneath the cursor horizontally
vim.opt.cursorline = true

-- always show current position
vim.opt.ruler = true

-- show matching brackets
vim.opt.showmatch = true
vim.opt.mat = 2

-- enable wrapping with h and l
vim.opt.whichwrap:append("h,l")




---
-- search
---

-- search as characters are entered
vim.opt.incsearch = true

-- do not highlight matches
vim.opt.hlsearch = true

-- ignore case in searches by default
vim.opt.ignorecase = true

-- but make it case sensitive if an uppercase is entered
vim.opt.smartcase = true

-- magic in regular expressions
vim.opt.magic = true

-- re-center when going through search results
-- vim.keymap.set('n', 'n', 'nzz')
-- vim.keymap.set('n', 'N', 'Nzz')


---
-- indentation and tab handling
---

-- show whitespace and tab mixtures
vim.g.show_spaces_that_precede_tabs = true
