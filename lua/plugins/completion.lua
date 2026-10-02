return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
        },
        opts = function()
            -- register nvim-cmp lsp capabilities
            -- new style:
            --   vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
            -- old style:
            --   require('lspconfig')['pylsp'].setup { capabilities = require('cmp_nvim_lsp').default_capabilities() }
            local cmp = require("cmp")
            return {
                snippet = {
                    expand = function(args)
                      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                      vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources(
                    {{ name = 'nvim_lsp' }},
                    -- { name = 'vsnip' }, -- For vsnip users.
                    -- { name = 'luasnip' }, -- For luasnip users.
                    -- { name = 'ultisnips' }, -- For ultisnips users.
                    -- { name = 'snippy' }, -- For snippy users.
                    {{ name = 'buffer' }}
                ),
            }
        end,
    },
}
