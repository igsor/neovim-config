
-- enable the nvim-dap-python plugin
-- the environment requires an installed debugpy
require("dap-python").setup("~/.config/nvim/plugins/dap-python/bin/python")

-- show inline values
require("nvim-dap-virtual-text").setup()

-- TODO: keybindings for commands!
