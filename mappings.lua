-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- local utils = require "user.utils"
local asutils = require "astronvim.utils"
local is_available = asutils.is_available
local sections = {
  z = { desc = " Zettelkasten" },
  x = { desc = " Trouble" },
  m = { desc = " Markdown" },
  n = { desc = "󰞋 Noegen" },
  r = { desc = " Run" },
}
local maps = { i = {}, n = {}, v = {}, t = {}, x = {}, c = {} }

---****Disable bindings****---
-- disable Terminal bindings
maps.n["<leader>gg"] = false
maps.n["<leader>tl"] = false
maps.n["<leader>tn"] = false
maps.n["<leader>tu"] = false
maps.n["<leader>tt"] = false
maps.n["<leader>tp"] = false
maps.n["<leader>n"] = false

---****Custom bindings****---
-- Go to home and end using capitalized directions
maps.n["H"] = { "^" }
maps.n["L"] = { "$" }

-- Map ; to : and save a million keystrokes
maps.n[";"] = { ":" }

-- switch window
-- maps.n["<tab>"] = { ":wincmd w<cr>" }

-- Buffer nav with Tab
maps.n["<Tab>"] = { ":bn<CR>" }
maps.n["<S-Tab>"] = { ":bp<CR>" }

-- table buffer navigation
maps.n["<leader>btn"] = { ":tabnext<CR>" }
maps.n["<leader>btp"] = { ":tabprevious<CR>" }
maps.n["<leader>bth"] = { ":tabfirst<CR>" }
maps.n["<leader>btl"] = { ":tablast<CR>" }

-- Reselect text after indent/unindent.
-- also with tab/s-tab
maps.v["<"] = { "<gv" }
maps.v[">"] = { ">gv" }

-- Remove highlights
maps.n["<esc>"] = { ":noh<cr>" }

-- 访问系统剪切板
maps.v["<leader>y"] = { '"+y', desc = "copy to register" }
maps.n["<leader>p"] = { '"+p', desc = "paste from register" }
-- maps.n["<leader>d"] = { '"+d', desc = "delete from register" }

-- 编辑完成后跳出括号
maps.i["<c-j>"] = { "<Esc>la" }
-- maps.i["<c-l>"] = { "<Esc>2la" }
-- maps.i["<c-h>"] = { "<Esc>i" }

-- 命令行模式,ctrl - a到行首， -e 到行尾
maps.c["<c-a>"] = { "<Home>" }
maps.c["<c-e>"] = { "<End>" }

-- go back to definition
-- maps.n["gb"] = { "<C-o>" }
--
maps.n["gs"] = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "show signature help" }

-- Hop
-- maps.n["<leader>jc"] = { "<cmd>HopChar1<cr>", desc = "Character" }
-- maps.n["<leader>jC"] = { "<cmd>HopChar2<cr>", desc = "2 Characters" }
maps.n["<leader>jl"] = { "<cmd>HopLine<cr>", desc = "Line" }
-- maps.n["<leader>jp"] = { "<cmd>HopPattern<cr>", desc = "Pattern" }
maps.n["<leader>jw"] = { "<cmd>HopWord<cr>", desc = "Word" }
-- maps.v["<leader>jc"] = maps.n["<Leader>jc"]
-- maps.v["<leader>jC"] = maps.n["<Leader>jC"]
-- maps.v["<leader>jl"] = maps.n["<Leader>jl"]
-- maps.v["<leader>jp"] = maps.n["<Leader>jp"]
-- maps.v["<leader>jw"] = maps.n["<Leader>jw"]

-- telekasten.nvim
maps.n["<leader>z"] = sections.z
maps.n["<leader>zf"] = { "<cmd>Telekasten find_notes<CR>", desc = "Find notes by title (filename)" }
maps.n["<leader>zg"] = { "<cmd>Telekasten search_notes<CR>", desc = "Search (grep) in all notes" }
maps.n["<leader>zr"] =
  { "<cmd>Telekasten rename_note<CR>", desc = "Rename current note and update the links pointing to it" }
maps.n["<leader>zd"] = { "<cmd>Telekasten toggle_todo<CR>", desc = "Toggle todo status of a line" }
maps.n["<leader>zz"] = { "<cmd>Telekasten follow_link<CR>", desc = "Follow the link under the cursor" }
maps.n["<leader>zn"] = { "<cmd>Telekasten new_note<CR>", desc = "Create a new note, prompts for title" }
maps.n["<leader>zc"] = { "<cmd>Telekasten show_calendar<CR>", desc = "Show the calendar" }
maps.n["<leader>zb"] = { "<cmd>Telekasten show_backlinks<CR>", desc = "Show all notes linking to the current one" }
maps.n["<leader>zt"] = { "<cmd>Telekasten show_tags<CR>", desc = "brings up the tag list" }
maps.n["<leader>zi"] = {
  "<cmd>Telekasten paste_img_and_link<CR>",
  desc = "Paste an image from the clipboard into a file and inserts a link to it",
}
maps.n["<leader>zI"] =
  { "<cmd>Telekasten insert_img_link<CR>", desc = "Browse images/media files and insert a link to the selected one" }
-- Call insert link automatically when we start typing a link
maps.i["[["] = { "<cmd>Telekasten insert_link<CR>", desc = "Insert a link to a note" }

-- code runner
maps.n["<leader>r"] = sections.r
maps.n["<leader>rr"] = { "<cmd>RunCode<cr>", desc = "Run Code file" }
maps.n["<leader>rb"] = { "<cmd>MdEval<cr>", desc = "Run C++ Code block in Markdown" }

-- translate
maps.n[",t"] = { "<cmd>TranslateW<cr>", desc = "Translate word" }

-- multicursors
maps.n["<leader>ss"] = { "<cmd>MCstart<cr>", desc = "select text under the cursor" }
maps.v["<leader>ss"] = { "<cmd>MCstart<cr>", desc = "select text under the cursor" }

-- view markdown
maps.n["<leader>m"] = sections.m
if is_available "markview.nvim" then
  maps.n["<leader>mm"] = { "<cmd>Markview toggleAll<cr>", desc = "Toggle markview" }
end
if is_available "render-markdown.nvim" then
  maps.n["<leader>mm"] = { "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle markdown render" }
end
maps.n["<leader>mo"] = { "<cmd>MarkmapOpen<cr>", desc = "Open markmap" }
maps.n["<leader>mw"] = { "<cmd>MarkmapWatch<cr>", desc = "Open markmap and watch for changes" }
maps.n["<leader>mc"] = { function() require("image").disable() end, desc = "Disable render image" }
maps.n["<leader>mi"] = { function() require("image").enable() end, desc = "Render image" }

-- todo-comments
maps.n["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODOs in wrokspace" }

-- projects
maps.n["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Search projects" }

-- remap <leader>ll to Search symbols
maps.n["<leader>ll"] = { function() require("telescope.builtin").lsp_document_symbols() end, desc = "Search symbols" }

-- goimpl
maps.n["<leader>fi"] = { "<cmd>Telescope goimpl<CR>", desc = "Search GoImpl" }

-- noegen
maps.n["<leader>n"] = sections.n
maps.n["<Leader>nf"] = { "<cmd>Neogen func<CR>", desc = "Autodocstring func" }
maps.n["<Leader>nc"] = { "<cmd>Neogen class<CR>", desc = "Autodocstring class" }

-- Telescope media-files
-- maps.n["<leader>fM"] = { "<cmd>Telescope media_files<cr>", desc = "Find media" }
maps.n["<leader>x"] = sections.x
maps.n["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" }
maps.n["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" }
maps.n["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" }
maps.n["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" }
maps.n["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" }

-- terminal mappings
maps.t["<C-q>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" }
maps.t["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" }
maps.n["<leader>ti"] = {
  function() asutils.toggle_term_cmd "ipython" end,
  desc = "ToggleTerm ipython",
}
maps.n["<leader>tj"] = {
  function() asutils.toggle_term_cmd "joshuto" end,
  desc = "ToggleTerm ipython",
}
return maps
