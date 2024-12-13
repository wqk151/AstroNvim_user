return {
  "ray-x/go.nvim",
  commit = "9347a52539d1dfa909df2aae8fbc50dad4fa11db",
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup {
      lsp_codelens = false,
      lsp_inlay_hints = {
        enable = false,
      },
    }
  end,
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
}
