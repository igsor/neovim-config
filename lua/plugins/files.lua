return {
    {
        -- also see https://nvim-tree.com
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            disable_netrw = true,
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40,
            },
            filters = {
                dotfiles = true,
            },
        },
        keys = {
            { "<M-t>", "<CMD>NvimTreeToggle<CR>" },
        },
        init = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        opts = {
            color_icons = true,
            default=true,
            variant='dark',
        },
        config = function(_, opts)
            require('nvim-web-devicons').setup(opts)
        end,
    },
    {
        "ctrlpvim/ctrlp.vim",
    },
}
