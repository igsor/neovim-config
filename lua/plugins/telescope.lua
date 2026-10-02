return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim",
        },
        opts = function()
            local actions = require('telescope.actions')
            return {
                extensions = {
                    undo = {},
                },
                defaults = {
                    initial_mode = "normal",
                    sorting_strategy = "ascending",
                    path_display = { "absolute", "smart", "truncate" },
                    layout_strategy = "vertical", -- FIXME: would prefer flex but that prefers horizontal
                    layout_config = {
                        vertical = {
                            width = 0.9,
                            height = 0.9,
                            preview_height = 0.75,
                            mirror = true,
                            prompt_position = 'top',
                        },
                        horizontal = {
                            height = 0.9,
                            width = 0.9,
                            preview_width = 0.5,
                            prompt_position = 'top',
                        },
                    },
                    preview = {
                        treesitter = true,
                    },
                    file_ignore_patterns = {
                        "LICENSE",
                        ".lock",
                        ".gif",
                        ".ico",
                        ".jpg",
                        ".png",
                        ".webm",
                        ".webp",
                    },
                    mappings = {
                        i = {
                            ["<C-j>"] = actions.preview_scrolling_down,
                            ["<C-k>"] = actions.preview_scrolling_up,
                            ["<C-Down>"] = actions.cycle_history_next,
                            ["<C-Up>"] = actions.cycle_history_prev,
                        },
                        n = {
                            ["q"] = actions.close,
                            ["<C-j>"] = actions.preview_scrolling_down,
                            ["<C-k>"] = actions.preview_scrolling_up,
                            -- ["<C-h>"] = actions.preview_scrolling_left, -- FIXME: no such action
                            -- ["<C-l>"] = actions.preview_scrolling_right, -- FIXME: no such action
                        },
                    },
                },
            }
        end,
        config = function(_, opts)
            require('telescope').setup(opts)
            require('telescope').load_extension('undo')
        end,
    },
}
