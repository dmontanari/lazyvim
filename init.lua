-- Configura a largura do tab para 4 espaços
vim.o.tabstop = 4

-- Configura a largura da indentação para 4 espaços
vim.o.shiftwidth = 4

-- Faz com que o pressionar de Tab insira espaços em vez de tabs
vim.o.expandtab = true

-- Comandos personalizados para habilitar/desabilitar o IntelliSense
vim.api.nvim_create_user_command("IntelliOff", function()
  require("cmp").setup({ enabled = false })
end, {})

vim.api.nvim_create_user_command("IntelliOn", function()
  require("cmp").setup({ enabled = true })
end, {})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
