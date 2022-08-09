local group_id = vim.api.nvim_create_augroup("FormatAutogroup", {})
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	command = "FormatWrite",
	group = group_id,
})

require("formatter").setup({
	filetype = {
		vue = {
			require("formatter.defaults.prettier"),
		},
		javascript = {
			require("formatter.defaults.prettier"),
		},
		typescript = {
			require("formatter.defaults.prettier"),
		},
		javascriptreact = {
			require("formatter.defaults.prettier"),
		},
		typescriptreact = {
			require("formatter.defaults.prettier"),
		},
		html = {
			require("formatter.defaults.prettier"),
		},
		python = {
			require("formatter.filetypes.python").autopep8,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
		prisma = {
			require("formatter.defaults.prettier"),
		},
		php = {
			require("formatter.defaults.prettier"),
		},
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
