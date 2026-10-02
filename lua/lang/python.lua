return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config('pylsp', {
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                ignore = {'W391'},
                                maxLineLength = 100
                            }
                        }
                    }
                },
            })
            vim.lsp.enable('pylsp')
            vim.lsp.enable('ruff')

            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format { async = true }
                vim.lsp.buf.code_action {
                    context = { only = { 'source.organizeImports' } },
                    apply = true,
                }
                end,
                bufopts
            )
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            -- NOTE: must have debugpy installed in the environment
            require("dap-python").setup("~/.config/nvim/plugin-bin/dap-python/bin/python")
        end,
    },
}
