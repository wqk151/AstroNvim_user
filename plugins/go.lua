return {
  "ray-x/go.nvim",
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
