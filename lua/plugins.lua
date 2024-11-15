
-- bootstrapping Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup(
    {
        "tanvirtin/monokai.nvim",
        "ctrlpvim/ctrlp.vim",
        "vim-airline/vim-airline",
        "preservim/nerdtree",
        "tmhedberg/SimpylFold",
        "tpope/vim-fugitive",
        "vim-syntastic/syntastic",
        "vim-scripts/indentpython.vim",
        "ntpeters/vim-better-whitespace",
        "preservim/vim-markdown",
        "tpope/vim-commentary",
        "godlygeek/tabular",
    }
)
