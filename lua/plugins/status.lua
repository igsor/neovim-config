return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            icons_enabled = true,
            theme = "auto",
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            sections = {
                lualine_a = {'mode'},
                lualine_b = { function() return require('auto-session.lib').current_session_name(true) end },
                lualine_c = {
                    {
                        'filename',
                        path = 1, -- relative path
                        symbols = {
                            modified = "⚡",
                            readonly = "",
                        },
                    }
                },
                lualine_x = {'diagnostics', 'branch', 'diff' },
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
        },
        init = function()
            -- always show the status like
            vim.opt.laststatus = 2
            -- don't show the the "-- INSERT --" mode hint since that's covered by airline
            vim.opt.showmode = false
        end,
    },
}
