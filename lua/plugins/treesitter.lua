return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            indent = { enable = true },
            folds = { enable = true },
            highlight = {
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            -- enable incremental selection
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>", -- set to `false` to disable one of the mappings
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<S-TAB>",
                },
            },
            ensure_installed = {
                "awk",
                "bash",
                "bibtex",
                "cmake",
                "c",
                "css",
                "csv",
                "dot",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "gnuplot",
                "diff",
                "html",
                "json",
                "json5",
                "lua",
                "luadoc",
                "make",
                "markdown",
                "markdown_inline",
                "perl",
                "php",
                "python",
                "regex",
                "sparql",
                "sql",
                "toml",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            }
        },
        config = function(_, opts)
            -- enable treesitter
            require("nvim-treesitter.configs").setup(opts)
        end,
        init = function()
            -- enable folding
            vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
            vim.wo[0][0].foldmethod = 'expr'
        end,
    },
    {
        'gsuuon/tshjkl.nvim',
        opts = {
            -- false to highlight only. Note that enabling this will hide the highlighting of child nodes
            select_current_node = true,
            keymaps = {
              toggle = '<leader>ts',
            },
            marks = {
                parent = {
                    virt_text = { {'h', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                child = {
                    virt_text = { {'l', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                prev = {
                    virt_text = { {'k', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                next = {
                    virt_text = { {'j', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                }
            },
        },
    },
}
