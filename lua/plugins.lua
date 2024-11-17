
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
        "folke/tokyonight.nvim",
        "ctrlpvim/ctrlp.vim",
        "vim-airline/vim-airline",
        "vim-airline/vim-airline-themes",
        "preservim/nerdtree",
        "tpope/vim-fugitive",
        "vim-syntastic/syntastic",
        "ntpeters/vim-better-whitespace",
        "preservim/vim-markdown",
        "tpope/vim-commentary",
        "godlygeek/tabular",
        "jmcantrell/vim-virtualenv",
        "machakann/vim-sandwich",
        "mfussenegger/nvim-dap",
        "mfussenegger/nvim-dap-python",
        "theHamsta/nvim-dap-virtual-text",
        {"nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" }},
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp",
        "liuchengxu/vista.vim",
        "ray-x/lsp_signature.nvim",
        -- "rose-pine/neovim",
        --"tmhedberg/SimpylFold", --replaced by treesitter
        --"vim-scripts/indentpython.vim", -- replaced by treesitter
    }
)
