return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	-- {
	-- 	"williamboman/mason.nvim",
	-- 	config = function()
	-- 		require("mason").setup()
	-- 		require("mason-lspconfig").setup()
	-- 		require("mason-lspconfig").setup_handlers({
	-- 			-- The first entry (without a key) will be the default handler
	-- 			-- and will be called for each installed server that doesn't have
	-- 			-- a dedicated handler.
	-- 			function(server_name) -- default handler (optional)
	-- 				require("lspconfig")[server_name].setup({})
	-- 			end,
	-- 			["lua_ls"] = function()
	-- 				local capabilities = require("blink.cmp").get_lsp_capabilities()
	-- 				require("lspconfig").lua_ls.setup({ capabilites = capabilities })
	-- 			end,
	-- 			["tailwindcss"] = function()
	-- 				require("lspconfig").tailwindcss.setup({
	-- 					filetypes = {
	-- 						"svelte",
	-- 						"tsx",
	-- 						"html",
	-- 						"jsx",
	-- 					},
	-- 				})
	-- 			end,
	-- 		})
	-- 	end,
	-- },
}
