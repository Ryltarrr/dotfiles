let g:coq_settings = { 'auto_start': 'shut-up' }
let g:lsp_diagnostics_echo_cursor = 1
set completeopt=menu,menuone,noselect

lua <<EOF
    local nvim_lsp = require('lspconfig')
    local coq = require "coq"
    -- Setup lspconfig.
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    -- require('lspconfig')['pyright'].setup {
    -- require('lspconfig')['tsserver'].setup {
    -- require('lspconfig')['rls'].setup {
    local servers = {
        'pyright',
        'rls',
        'tailwindcss',
        'tsserver',
        'vuels' ,
        'racket_langserver',
        'clangd',
        'prismals',
        'gopls',
        'phpactor',
    }

    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities
      }))
    end

    -- autopairs <CR> mapping
    -- https://github.com/windwp/nvim-autopairs#mapping-cr
    local remap = vim.api.nvim_set_keymap
    local npairs = require('nvim-autopairs')

    npairs.setup({ map_bs = false, map_cr = false })

    vim.g.coq_settings = { keymap = { recommended = false } }

    -- these mappings are coq recommended mappings unrelated to nvim-autopairs
    remap('i', '<esc>', [[pumvisible() ? "<c-e><esc>" : "<esc>"]], { expr = true, noremap = true })
    remap('i', '<c-c>', [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]], { expr = true, noremap = true })
    remap('i', '<tab>', [[pumvisible() ? "<c-n>" : "<tab>"]], { expr = true, noremap = true })
    remap('i', '<s-tab>', [[pumvisible() ? "<c-p>" : "<bs>"]], { expr = true, noremap = true })

    -- skip it, if you use another global object
    _G.MUtils= {}

    MUtils.CR = function()
      if vim.fn.pumvisible() ~= 0 then
        if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
          return npairs.esc('<c-y>')
        else
          return npairs.esc('<c-e>') .. npairs.autopairs_cr()
        end
      else
        return npairs.autopairs_cr()
      end
    end
    remap('i', '<cr>', 'v:lua.MUtils.CR()', { expr = true, noremap = true })

    MUtils.BS = function()
      if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
        return npairs.esc('<c-e>') .. npairs.autopairs_bs()
      else
        return npairs.autopairs_bs()
      end
    end
    remap('i', '<bs>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })
EOF
