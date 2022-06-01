require("personal.telescope")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

-- toggleterm
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction="float", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- indent_blankline.nvim
vim.opt.list = true

require("indent_blankline").setup {}
require'nvim-tree'.setup {}
require('gitsigns').setup{}
require'toggleterm'.setup {
  shade_terminals = false
}
require('nvim-autopairs').setup{}

