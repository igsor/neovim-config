-- configure nvim builtins
require("general") -- NOTE: should be imported first (leader)
require("buffer")
require("editor")
require("files")

-- bootstrap Lazy
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

-- load and configure plugins
require("lazy").setup(
    {
        "folke/tokyonight.nvim",
        "ctrlpvim/ctrlp.vim",
        "vim-airline/vim-airline",
        "vim-airline/vim-airline-themes",
        "preservim/nerdtree",
        -- "vim-syntastic/syntastic", -- FIXME: takes WAY too long; replace
        "preservim/vim-markdown",
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
        --
        -- cmp
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        -- "SirVer/ultisnips",
        -- "quangnguyen30192/cmp-nvim-ultisnips",
        -- "tzachar/local-highlight.nvim",
        "rmagatti/auto-session",
        "pablopunk/pi.nvim",
        "ggml-org/llama.vim",
        -- "rcarriga/nvim-notify", -- used by pi, doesn't work as expected.
        -- "georg3tom/llama.nvim",
        -- "heavysudo/pi-neovim-plugin",
        "zlass/abolish.nvim",
  {import = "plugins"},
  {import = "lang"},
  }
)

-- require('local-highlight').setup({
--     hlgroup='Search',

-- })

require('auto-session').setup({})

-- import the rest in arbitrary order
require("appearance")
require("debugging")
require("file_browsing")
require("folding")
require("highlighting")
require("indentation")
require("restklasse")
require("selection")
require("text_search")
require("language_services")
require("completion")
require("ai_agent")
