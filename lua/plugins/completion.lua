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
                    {{ name = 'buffer' }}
                    -- {{ name = 'luasnip' }}
                ),
                -- snippet = {
                --     expand = function(args)
                --       require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                --       -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                --     end,
                -- },
            }
        end,
    },
    {
        "hrsh7th/cmp-cmdline",
        config = function(_, opts)
            local cmp = require('cmp')
            -- disable the Wild menu; completions come from cmp.
            vim.opt.wildmenu = false
            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {{ name = 'path' }},
                    {{ name = 'cmdline' }}
                ),
                matching = { disallow_symbol_nonprefix_matching = false },
            })
            -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {{ name = 'path' }},
                    {{ name = 'buffer' }}
                )
            })
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
    },
    {
        "ggml-org/llama.vim",
        opts = {
            -- NOTE: MUST specify all keys!
            api_key = "",
            auto_fim = true,
            enable_at_startup = true,
            endpoint_fim = "http://127.0.0.1:8012/infill",
            endpoint_inst = "http://127.0.0.1:8012/v1/chat/completions",
            info_compact = 3,
            keymap_debug_toggle = "<leader>lld",
            keymap_fim_accept_full = "<Tab>",
            keymap_fim_accept_line = "<S-Tab>",
            keymap_fim_accept_word = "<leader>ll]",
            keymap_fim_next = "<C-J>",
            keymap_fim_prev = "<C-K>",
            keymap_fim_trigger = "<leader>llf",
            keymap_inst_accept = "<Tab>",
            keymap_inst_cancel = "<Esc>",
            keymap_inst_continue = "<leader>llc",
            keymap_inst_rerun = "<leader>llr",
            keymap_inst_trigger = "<leader>lli",
            max_cache_keys = 250,
            max_line_suffix = 8,
            model_fim = "",
            model_inst = "",
            n_cmpl = 1,
            n_predict = 128,
            n_prefix = 256,
            n_suffix = 64,
            profile = "",
            profiles = {},
            ring_chunk_size = 64,
            ring_n_chunks = 16,
            ring_scope = 1024,
            ring_update_ms = 1000,
            show_info = 0,
            stop_strings_fim = {},
            stop_strings_inst = {},
            t_max_predict_ms = 1000,
            t_max_prompt_ms = 500
        },
        config = function(_, opts)
            vim.g.llama_config = opts
        end,
    },
    -- FIXME: better than ggml-org/llama.vim config-wise but way slower
    -- {
    --   "georg3tom/llama.nvim",
    --   opts = {
    --     auto_fim = true,
    --     -- keymap_trigger = '',
    --     -- stop_strings = { "\n" },
    --     keymap_accept_full = '<C-SPACE>',
    --     keymap_accept_line = '<C-M-SPACE>',
    --   },
    --   config = function(_, opts)
    -- require('llama').setup(opts)
    --   end,
    -- },
}
