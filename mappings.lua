-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "user.utils"
local asutils = require "astronvim.utils"

local maps = { i = {}, n = {}, v = {}, t = {}, x = {}, c = {} }

---****Disable bindings****---
-- disable Terminal bindings
maps.n["<leader>gg"] = false
maps.n["<leader>tl"] = false
maps.n["<leader>tn"] = false
maps.n["<leader>tu"] = false
maps.n["<leader>tt"] = false
maps.n["<leader>tp"] = false

---****Custom bindings****---
-- Go to home and end using capitalized directions
maps.n["H"] = { "^" }
maps.n["L"] = { "$" }

-- Map ; to : and save a million keystrokes
maps.n[";"] = { ":" }

-- switch window
maps.n["<tab>"] = { ":wincmd w<cr>" }

-- 访问系统剪切板
maps.v["<leader>y"] = { '"+y' }
maps.v["<leader>p"] = { '"+p' }
maps.v["<leader>d"] = { '"+d' }

-- 编辑完成后跳出括号
maps.i["<c-j>"] = { "<Esc>la" }
maps.i["<c-l>"] = { "<Esc>2la" }
maps.i["<c-k>"] = { "<Esc>i" }

-- 命令行模式,ctrl - a到行首， -e 到行尾
maps.c["<c-a>"] = { "<Home>" }
maps.c["<c-e>"] = { "<End>" }

-- go back to definition
maps.n["gb"] = { "<C-o>" }

-- Hop
maps.n["<leader>jc"] = { "<cmd>HopChar1<cr>", desc = "Character" }
maps.n["<leader>jC"] = { "<cmd>HopChar2<cr>", desc = "2 Characters" }
maps.n["<leader>jl"] = { "<cmd>HopLine<cr>", desc = "Line" }
maps.n["<leader>jp"] = { "<cmd>HopPattern<cr>", desc = "Pattern" }
maps.n["<leader>jw"] = { "<cmd>HopWord<cr>", desc = "Word" }
maps.v["<leader>jc"] = maps.n["<Leader>jc"]
maps.v["<leader>jC"] = maps.n["<Leader>jC"]
maps.v["<leader>jl"] = maps.n["<Leader>jl"]
maps.v["<leader>jp"] = maps.n["<Leader>jp"]
maps.v["<leader>jw"] = maps.n["<Leader>jw"]

-- code runner
maps.n["<leader>rr"] = { "<cmd>RunCode<cr>", desc = "Run Code file" }

-- translate
maps.n[",t"] = { "<cmd>TranslateW<cr>", desc = "Translate word" }

-- markdown table mode
maps.n["<leader>mt"] = { "<cmd>TableModeToggle<cr>", desc = "Markdown table mode" }

-- todo-comments
maps.n["<leader>T"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODOs in Telescope" }

-- terminal mappings
maps.t["<C-q>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" }
maps.t["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" }
maps.n["<leader>ti"] = { function() asutils.toggle_term_cmd "ipython" end, desc = "ToggleTerm ipython" }

return maps
