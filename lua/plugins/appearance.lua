-- NOTE: only enable if tiny-inline-diagnostic not used!
-- -- show error messages
-- vim.diagnostic.config({ virtual_text = true })
-- -- show error messages on the right
-- vim.diagnostic.config({
--     virtual_text = {
--         format = function(diagnostic)
--             local lines = vim.split(diagnostic.message, '\n')
--             return lines[1]
--         end,
--         virt_text_pos = 'right_align',
--         suffix = ' ',
--     },
-- })

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {
            style = "storm",
            transparent = true,
            terminal_colors = true,
            lualine_bold = true,
        },
        init = function()
            -- enable 24-bit RGB color in the TUI
            vim.opt.termguicolors = true
            -- set to dark mode
            vim.opt.background = "dark"
            -- color scheme
            vim.cmd "colorscheme tokyonight-night"
        end,
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        opts = {
            preset = 'powerline',
            options = {
                show_source = {
                    enabled = true,
                },
                show_code = true,
                multilines = {
                    enabled = true,
                    always_show = false,
                },
                enable_on_insert = false,

            },
        },
        init = function()
            -- Disable Neovim's default virtual text diagnostics
            vim.diagnostic.config({ virtual_text = false })
        end,
    },
    {
            "rcarriga/nvim-notify",
    },
}
