return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "mfussenegger/nvim-dap-python", -- see lang/python.lua
            "theHamsta/nvim-dap-virtual-text",
        },
        keys = {
            { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
            { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
            { "<leader>dc", function() require("dap").continue() end, desc = "Run/Continue" },
            { "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
            { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
            { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
            { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
            { "<leader>do", function() require("dap").step_over() end, desc = "Step Over" },
            { "<leader>dO", function() require("dap").step_out() end, desc = "Step Out" },
            { "<leader>dj", function() require("dap").down() end, desc = "Next lower frame" },
            { "<leader>dk", function() require("dap").up() end, desc = "Next upper frame" },
            { "<leader>dv", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
        },
    },
}
