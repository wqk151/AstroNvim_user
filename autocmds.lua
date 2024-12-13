local my_augroup = vim.api.nvim_create_augroup("MyAutoCommands", { clear = true })
-- remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
  group = my_augroup,
})

-- convert tabs to 4 spaces
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  command = "retab! | setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab",
  group = my_augroup,
})
