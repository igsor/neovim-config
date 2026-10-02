return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "debugloop/telescope-undo.nvim",
            "nvim-lua/plenary.nvim",
            "rcarriga/nvim-notify",
        },
        opts = function()
            local actions = require('telescope.actions')
            return {
                extensions = {
                    undo = {},
                    notify = {},
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
                            ["<C-h>"] = actions.preview_scrolling_left,
                            ["<C-l>"] = actions.preview_scrolling_right,
                            ["<C-Down>"] = actions.cycle_history_next,
                            ["<C-Up>"] = actions.cycle_history_prev,
                        },
                        n = {
                            ["q"] = actions.close,
                            ["<C-j>"] = actions.preview_scrolling_down,
                            ["<C-k>"] = actions.preview_scrolling_up,
                            ["<C-h>"] = actions.preview_scrolling_left,
                            ["<C-l>"] = actions.preview_scrolling_right,
                        },
                    },
                },
            }
        end,
        keys = {
            -- { "<leader>ff", "<CMD>Telescope document_symbols<CR>" }, -- superseeded by treesitter
            { "<leader>ff", "<CMD>Telescope find_files theme=ivy initial_mode=insert<CR>" },
            { "<leader>gb", "<CMD>Telescope git_branches<CR>" },
            { "<leader>gc", "<CMD>Telescope git_commits<CR>" },
            { "<leader>gf", "<CMD>Telescope git_files theme=ivy initial_mode=insert<CR>" },
            { "<leader>gh", "<CMD>Telescope git_stash<CR>" },
            { "<leader>gs", "<CMD>Telescope git_status<CR>" },
            { "<M-8>", "<CMD>Telescope grep_string<CR>" },
            { "<M-o>", "<CMD>Telescope jumplist<CR>" },
            { "<leader>/", "<CMD>Telescope live_grep initial_mode=insert<CR>" },
            -- { "<C-]>", "<CMD>Telescope lsp_definitions<CR>" }, -- already covered
            { "<M-]>", "<CMD>Telescope lsp_references<CR>" },
            { "<leader>s", "<CMD>Telescope treesitter initial_mode=insert<CR>" },
            { "<leader>u", "<CMD>Telescope undo<CR>" },
            { "<C-s>", "<CMD>Telescope session-lens<CR>" },
            { "<leader>!", "<CMD>Telescope diagnostics<CR>" },
        },
        config = function(_, opts)
            require('telescope').setup(opts)
            require('telescope').load_extension('undo')
            require('telescope').load_extension('notify')
            vim.cmd('cnoreabbrev ls Telescope buffers')
            vim.cmd('cnoreabbrev Notifications Telescope notify')
            vim.api.nvim_create_user_command("Diagnostics", "Telescope diagnostics", { desc = "show diagnostics" })
        end,
    },
}
