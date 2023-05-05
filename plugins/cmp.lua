return {
  {
    "hrsh7th/nvim-cmp",
    event = "User AstroFile",
    dependencies = {
      -- { "hrsh7th/cmp-nvim-lsp-signature-help" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "saadparwaiz1/cmp_luasnip" },
      { "L3MON4D3/LuaSnip" },
    },
    opts = {
      -- performance = {
      --   debounce = 0,
      --   throttle = 0,
      --   -- fetching_timeout = 0,
      -- },
      experimental = {
        ghost_text = true,
      },
      completion = {
        keyword_length = 1,
      },
      matching = {
        fuzzy = {
          fuzzy = true,
          smart_case = true,
        },
      },
      window = {
        completion = {
          completeopt = "menu,menuone,noinsert",
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
          col_offset = -3,
          side_padding = 0,
        },
      },
      -- CMP Source Priorities
      -- modify here the priorities of default cmp sources
      -- higher value == higher priority
      -- The value can also be set to a boolean for disabling default sources:
      -- false == disabled
      -- true == 1000
      sources = {
        { name = "nvim_lsp", priority = 1000, keyword_length = 2 },
        { name = "luasnip", priority = 750, keyword_length = 2 },
        { name = "buffer", priority = 500, keyword_length = 3 },
        { name = "path", priority = 250 },
        -- { name = "nvim_lsp_signature_help" },
      },
      sorting = {
        priority_weight = 2,
      },
    },
  },
}
