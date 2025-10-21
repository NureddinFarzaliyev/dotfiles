return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local on_attach = function(client, bufnr)
        end

        vim.lsp.config("markdown_oxide", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("markdown_oxide")
    end,
}
