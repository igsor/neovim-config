return {
    {
        "liuchengxu/vista.vim", -- FIXME: replace with stevearc/aerial.nvim
        init = function()
            vim.keymap.set("n", "<M-s>", "<CMD>Vista!!<CR>")
        end,
    },
}
