-- Comandos personalizados para habilitar/desabilitar o IntelliSense
vim.api.nvim_create_user_command("IntelliOff", function()
    require("cmp").setup({ enabled = false })
end, {})

vim.api.nvim_create_user_command("IntelliOn", function()
    require("cmp").setup({ enabled = true })
end, {})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").clangd.setup({})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
