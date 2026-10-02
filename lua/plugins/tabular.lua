return {
    {
        "godlygeek/tabular",
        init = function()
            vim.keymap.set("v", "<leader>tt", "<CMD>Tabularize ")
            vim.keymap.set("v", "<leader>t ", "<CMD>Tabularize multiple_spaces<CR>")
        end,
    },
}
