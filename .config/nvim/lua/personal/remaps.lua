local nnoremap = require("personal.keymap").nnoremap

nnoremap("<leader>vd", ":lua vim.lsp.buf.definition()<cr>")
nnoremap("<leader>vi", ":lua vim.lsp.buf.implementation()<cr>")
nnoremap("<leader>vsh", ":lua vim.lsp.buf.signature_help()<cr>")
nnoremap("<leader>vrr", ":lua vim.lsp.buf.references()<cr>")
nnoremap("<leader>vrn", ":lua vim.lsp.buf.rename()<cr>")
nnoremap("<leader>vh", ":lua vim.lsp.buf.hover()<cr>")
nnoremap("<leader>vc", ":lua vim.lsp.buf.code_action()<cr>")
nnoremap("<leader>ve", ":lua vim.diagnostic.open_float()<cr>")
nnoremap("<leader>vn", ":lua vim.diagnostic.goto_next()<cr>")
nnoremap("<leader>vp", ":lua vim.diagnostic.goto_prev()<cr>")
nnoremap("<leader>frc", ":lua require('personal.telescope').search_dotfiles({ hidden = true })<CR>")
