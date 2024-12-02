return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "folke/neodev.nvim",
    },
    config = function()
        local on_attach = function(_, bufnr)
            vim.keymap.set('n', 'k', vim.lsp.buf.hover, {buffer = bufnr})
        end
        require("neodev").setup()
        require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
            settings = {
                lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                },
            },
        })
        require("lspconfig").java_language_server.setup({
            on_attach = on_attach,
            settings = {
                lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                },
            },
        })
        require("lspconfig").jsonls.setup({
            on_attach = on_attach,
            settings = {
                lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                },
            },
        })
        require("lspconfig").pylsp.setup({
            on_attach = on_attach,
            settings = {
                lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                },
            },
        })
    end
}
