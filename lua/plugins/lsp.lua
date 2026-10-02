return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require('lspconfig').ruff.setup({})
            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format { async = true }
                vim.lsp.buf.code_action {
                    context = { only = { 'source.organizeImports' } },
                    apply = true,
                }
                end,
                bufopts
            )
            require('lspconfig').pylsp.setup{
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                ignore = {'W391'},
                                maxLineLength = 100
                            }
                        }
                    }
                }
            }
        end,
    },
}
