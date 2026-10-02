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
        -- "SirVer/ultisnips",
        -- "quangnguyen30192/cmp-nvim-ultisnips",
        "pablopunk/pi.nvim",
        -- "rcarriga/nvim-notify", -- used by pi, doesn't work as expected.
        -- "heavysudo/pi-neovim-plugin",
  {import = "plugins"},
  {import = "lang"},
  }
)

-- import the rest in arbitrary order
require("ai_agent")
