local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		name = "catppuccin",
		-- config = function()
		-- 	vim.cmd("colorscheme catppuccin-macchiato")
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight-moon")
		end,
	},
	{
		"numToStr/Comment.nvim",
		tag = "v0.8.0",
		event = "VeryLazy",
		opts = {},
	},
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
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"javascript",
					"typescript",
					"tsx",
					"go",
					"rust",
					"lua",
					"vue",
					"css",
					"json",
					"prisma",
					"markdown",
					"markdown_inline",
					-- "templ",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = false,
					keymaps = {
						init_selection = "gnn",
						node_incremental = "grn",
						scope_incremental = "grc",
						node_decremental = "grm",
					},
				},
			})
		end,
		build = ":TSUpdate",
	},
	{
		"windwp/nvim-autopairs",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				filetypes = { "html", "javascript", "javascriptreact", "typescriptreact", "templ" },
			})
		end,
	},
	-- LSP related stuff
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	-- 	vim.keymap.set("n", "<leader>rn", function()
	-- 		vim.lsp.buf.rename()
	-- 	end, opts)
	{
		"hrsh7th/nvim-cmp",
        -- stylua: ignore
		keys = {
            { "<leader>rn", function() vim.lsp.buf.rename() end, desc = "Rename function" }
        },
	},
	{ "L3MON4D3/LuaSnip" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		keys = {
			{ "<leader>t", "<cmd>Neotree toggle float reveal<cr>", desc = "NeoTree" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	},
	{ "simrat39/rust-tools.nvim", ft = "rust" },
	{
		"folke/trouble.nvim",
        -- stylua: ignore
		keys = {
			{ "<leader>xx", "<cmd>Trouble<cr>", desc = "trouble open" },
			{ "<leader>xc", "<cmd>TroubleClose<cr>", desc = "trouble close" },
			{ "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", desc = "trouble workspace" },
			{ "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", desc = "trouble document" },
			{ "<leader>xq", "<cmd>Trouble quickfix<cr>", desc = "trouble quickfix" },
			{ "<leader>xl", "<cmd>Trouble loclist<cr>", desc = "trouble loclist" },
			{ "<leader>gR", "<cmd>Trouble lsp_references<cr>", desc = "trouble lsp_references" },
			{ "<leader>xj", function() require("trouble").next({ skip_groups = true, jump = true }) end, desc = "trouble close", },
			{ "<leader>xk", function() require("trouble").previous({ skip_groups = true, jump = true }) end, desc = "trouble close", },
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- {
	-- 	"folke/which-key.nvim",
	-- 	event = "VeryLazy",
	-- 	init = function()
	-- 		vim.o.timeout = true
	-- 		vim.o.timeoutlen = 300
	-- 	end,
	-- 	opts = {},
	-- },
	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gg", "<cmd>tab Git<cr>", desc = "git dashboard" },
		},
	},
	{ "theprimeagen/harpoon", event = "VeryLazy" },
	{ "tpope/vim-surround", event = "VeryLazy" },
	{
		"nvim-pack/nvim-spectre",
		keys = {
			{ "<leader>s", "<cmd>:Spectre<cr>", desc = "Global Find and Replace" },
		},
	},
	{ "mhartington/formatter.nvim", event = "VeryLazy" },
	-- "tpope/vim-sleuth",
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
        -- stylua: ignore
        keys = {
          { "<return>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
          { "<s-return>", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
          { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
          { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
          { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
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
	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
		},
		opts = {
			disable_frontmatter = true,
			workspaces = {
				{
					name = "work",
					path = "~/Documents/carnet",
				},
			},
		},
	},
	{
		"mikesmithgh/kitty-scrollback.nvim",
		enabled = true,
		lazy = true,
		cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
		event = { "User KittyScrollbackLaunch" },
		-- version = '*', -- latest stable version, may have breaking changes if major version changed
		version = "^4.0.0", -- pin major version, include fixes and features that do not have breaking changes
		config = function()
			require("kitty-scrollback").setup()
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
})
