return {
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        ft = "python",
        keys = {
            { "<M-v>", "<CMD>VenvSelect<CR>" },
        },
        opts = {
        },
    },
}

