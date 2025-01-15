return {
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.*",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<C-p>", "<cmd>Telescope git_files", desc = "git files" },
            { "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "live grep" },
            { "<leader>ft", "<cmd>Telescope grep_string<cr>", desc = "grep selection", mode = "v" },
            { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "diagnostics" },
            { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "keymaps" },
            { "<leader>fp", "<cmd>Telescope resume<cr>", desc = "previous" },
            { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "symbols" },
            {
                "<leader>frc",
                "<cmd>Telescope find_files cwd=/home/justin/.config/nvim<cr>",
                desc = "find config files",
            },
        },
    }
}
