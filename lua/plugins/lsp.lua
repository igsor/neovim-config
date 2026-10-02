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
    -- FIXME: doesn't seem to work
    -- {
    --     "ray-x/lsp_signature.nvim",
    --     event = "InsertEnter",
    --     opts = {
    --         bind = true,
    --         handler_opts = {
    --             border = "rounded"
    --         },
    --         floating_window = true,
    --         always_trigger = true,
    --     },
    -- },
}
