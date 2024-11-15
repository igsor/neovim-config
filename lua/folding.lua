-- enable folding
vim.opt.foldmethod = "indent"

-- do not fold by default
vim.opt.foldlevel = 99

-- enable folding with the spacebar
vim.keymap.set("n", "<space>", "za")

-- treesitter
-- enable folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- SimpylFolder
-- leave docstring open for folded code
--vim.g.SimpylFold_docstring_preview = true
