-- enable folding
vim.opt.foldmethod = "indent"

-- do not fold by default
vim.opt.foldlevel = 99

-- leave docstring open for folded code
vim.g.SimpylFold_docstring_preview = true

-- enable folding with the spacebar
vim.keymap.set("n", "<space>", "za")
