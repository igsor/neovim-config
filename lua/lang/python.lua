return {
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            -- NOTE: must have debugpy installed in the environment
            require("dap-python").setup("~/.config/nvim/plugin-bin/dap-python/bin/python")
        end,
    },
}
