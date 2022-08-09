local nnoremap = require("personal.keymap").nnoremap
require("gitsigns").setup()

nnoremap("<leader>gn", "<cmd>Gitsigns next_hunk<cr>")
nnoremap("<leader>gp", "<cmd>Gitsigns prev_hunk<cr>")
nnoremap("<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>")
nnoremap("<leader>gg", "<cmd>tab Git<cr>")
