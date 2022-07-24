local t = require("nvim-tree")
t.setup({
  open_on_setup = false
})
local Remap = require("personal.keymap")
local nnoremap = Remap.nnoremap

vim.keymap.set('n', '<leader>t', t.toggle)
