local my_augroup = vim.api.nvim_create_augroup("MyAutoCommands", { clear = true })
-- remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
  group = my_augroup,
})
