lua require("personal")

" Telescope
nnoremap <leader>fm <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>ft <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fp <cmd>Telescope resume<cr>
nnoremap <leader>vt <cmd>Telescope diagnostics bufnr=0<cr>
nnoremap <leader>vrr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fsw <cmd>Telescope grep_string<cr>
vnoremap <leader>fsw <cmd>Telescope grep_string<cr>
nnoremap <leader>fsg <cmd>lua require'telescope.builtin'.grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>s <cmd>lua require'telescope.builtin'.lsp_document_symbols{}<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>
nnoremap q: <cmd>Telescope command_history<cr>
nnoremap q/ <cmd>Telescope search_history<cr>
nnoremap <leader>frc :lua require('personal.telescope').search_dotfiles({ hidden = true })<CR>

" LSP
nnoremap <leader>vd :lua vim.lsp.buf.definition()<cr>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<cr>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<cr>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<cr>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<cr>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<cr>
nnoremap <leader>vc :lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>ve :lua vim.diagnostic.open_float()<cr>
nnoremap <leader>vn :lua vim.diagnostic.goto_next()<cr>
nnoremap <leader>vp :lua vim.diagnostic.goto_prev()<cr>

" Gitsigns
nnoremap <leader>gn <cmd>Gitsigns next_hunk<cr>
nnoremap <leader>gp <cmd>Gitsigns prev_hunk<cr>
nnoremap <leader>gb <cmd>Gitsigns toggle_current_line_blame<cr>
nnoremap <leader>gg <cmd>tab Git<cr>

" Misc
inoremap <C-c> <esc>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
