local opt = vim.opt

opt.termguicolors = true -- Enable colors in terminal
opt.mouse = "a" -- Enable mouse mode

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.number = true
opt.relativenumber = true

opt.hlsearch = false
opt.inccommand = "split"
opt.incsearch = true

opt.hidden = true
opt.errorbells = false
opt.wrap = false
opt.showmode = false

opt.ignorecase = true -- Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case

opt.scrolloff = 8
opt.scroll = 20

opt.undofile = true -- Save undo history
opt.signcolumn = "yes" -- Always show sign column
opt.colorcolumn = "80"

opt.completeopt = "menu,menuone,noselect"
