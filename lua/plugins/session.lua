return {
    {
        "rmagatti/auto-session",
        lazy = false,
        opts = {
            suppressed_dirs = {
                "~/",
                "~/Documents",
                "~/Downloads",
                "/",
            },
            auto_save = true,
            auto_restore = true,
            auto_create = true,
            lazy_support = true,
            session_lens = {
                picker = "telescope",
                load_on_setup = true,
                mappings = {
                    delete_session = { {"i", "n"}, "<C-d>" }, -- FIXME: only works in insert mode
                },
            },
        },
    },
}
