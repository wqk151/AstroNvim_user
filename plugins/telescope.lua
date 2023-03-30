return {
  "nvim-telescope/telescope-media-files.nvim",
  dependencies = { "nvim-lua/popup.nvim" },
  after = "telescope.nvim",
  keys = {
    { "<leader>fM", "<cmd>Telescope media_files<cr>", desc = "Find media" },
  },
  config = function() require("telescope").load_extension "media_files" end,
}
