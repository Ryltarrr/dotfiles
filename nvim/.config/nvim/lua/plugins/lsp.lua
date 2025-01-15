return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then
                        return
                    end

                    vim.keymap.set("n", "gd", function()
                        vim.lsp.buf.definition()
                    end)
                    vim.keymap.set("n", "K", function()
                        vim.lsp.buf.hover()
                    end)
                    vim.keymap.set("n", "<leader>vws", function()
                        vim.lsp.buf.workspace_symbol()
                    end)
                    vim.keymap.set("n", "gl", function()
                        vim.diagnostic.open_float()
                    end)
                    vim.keymap.set("n", "<leader>vn", function()
                        vim.diagnostic.goto_next()
                    end)
                    vim.keymap.set("n", "<leader>vp", function()
                        vim.diagnostic.goto_prev()
                    end)
                    vim.keymap.set("n", "<leader>c", function()
                        vim.lsp.buf.code_action()
                    end)

                    if client.supports_method("textDocument/rename") then
                        vim.keymap.set("n", "<leader>rn", function()
                            vim.lsp.buf.rename()
                        end)
                    end

                    if vim.bo.filetype == "lua" then
                        -- Format the current buffer on save
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                            end,
                        })
                    end
                end,
            })
        end,
    },
}
