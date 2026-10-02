return {
    {
        "godlygeek/tabular",
        init = function()
            vim.keymap.set("v", "<leader>tt", "<CMD>Tabularize /")
        end,
    },
}
