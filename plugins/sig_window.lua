return {
  "erhickey/sig-window-nvim",
  event = "VeryLazy",
  config = function()
    require("sig-window-nvim").setup {
      zindex = 50, -- signature window z-index
      border = "rounded", -- signature window border, see ':help nvim_open_win' for possible values
      max_width = 80, -- signature window max width
      max_height = 5, -- signature window max height
      hl_active_param = true, -- whether or not to highlight the active parameter
      hl_group = "rainbowcol4", -- highlight group used to highlight active parameter
    }
  end,
}
