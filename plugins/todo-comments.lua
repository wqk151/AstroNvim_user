return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  event = "User AstroFile",
  cmd = { "TodoQuickFix", "TodoLocList", "TodoTrouble", "TodoTelescope" },
  keys = {
    { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
  },
}
