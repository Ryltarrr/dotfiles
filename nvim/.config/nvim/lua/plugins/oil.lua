return {
    {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- stylua: ignore
        keys = {
            { "<leader>o", "<cmd>Oil<cr>", desc = "Oil nvim" },
        },
    },
}
