return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        },
        opts = function()
            return {
                extensions = {
                    undo = {},
                },
            }
        end,
        config = function(_, opts)
            require('telescope').setup(opts)
            require('telescope').load_extension('undo')
        end,
    },
}
