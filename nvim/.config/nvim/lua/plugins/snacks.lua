return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			lazygit = { enabled = true },
			terminal = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
		keys = {
			{ "<leader>lg", "<cmd>lua Snacks.lazygit()<cr>", desc = "LazyGit" },
			{ "<leader>tl", "<cmd>lua Snacks.terminal.open()<cr>", desc = "Terminal" },
			{ "<leader>tr", "<cmd>lua Snacks.picker.explorer()<cr>", desc = "Explorer" },
		},
	},
}
