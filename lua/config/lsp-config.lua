-- lsp-config.lua

-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
vim.diagnostic.config({ virtual_text = false })

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "css", "html", "php", "javascript", "vue", "scss", "less", "typescript", "svelte" },
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<cr>'] = cmp.mapping.confirm({ select = true })
    }

})

