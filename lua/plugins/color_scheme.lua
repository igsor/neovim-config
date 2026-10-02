return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {
            style = "storm",
            transparent = true,
            terminal_colors = true,
        },
        init = function()
            -- enable 24-bit RGB color in the TUI
            vim.opt.termguicolors = true
            -- set to dark mode
            vim.opt.background = "dark"
            -- color scheme
            vim.cmd "colorscheme tokyonight-night"
        end,
    }
}
