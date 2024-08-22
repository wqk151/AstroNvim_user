return {
  "abecodes/tabout.nvim",
  event = "InsertEnter",
  config = function()
    require("tabout").setup {
      tabkey = "<C-l>", -- key to trigger tabout, set to an empty string to disable
      backwards_tabkey = "<C-h>", -- key to trigger backwards tabout, set to an empty string to disable
      act_as_tab = true, -- shift content if tab out is not possible
      act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
      default_tab = "", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
      default_shift_tab = "", -- reverse shift default action,
      enable_backwards = true, -- well ...
      completion = true, -- if the tabkey is used in a completion pum
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
      },
      ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
      exclude = {}, -- tabout will ignore these filetypes
    }
  end,
  wants = { "nvim-treesitter" }, -- or require if not used so far
  after = { "nvim-cmp" }, -- if a completion plugin is using tabs load it before
}
