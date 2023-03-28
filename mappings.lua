-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "user.utils"

local maps = { i = {}, n = {}, v = {}, t = {}, x = {}, c = {} }

-- Go to home and end using capitalized directions
maps.n["H"] = { "^" }
maps.n["L"] = { "$" }
-- Map ; to : and save a million keystrokes
maps.n[";"] = { ":" }

-- kj replace Esc
maps.i["kj"] = { "<esc>" }

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

maps.n["<leader>j"] = { name = "Hop / Jump" }
maps.v["<leader>j"] = { name = "Hop / Jump" }
maps.n["<leader>z"] = { name = "Zk Notes" }
maps.v["<leader>z"] = { name = "Zk Notes" }

-- disable default bindings
maps.n["<C-Down>"] = false
maps.n["<C-Left>"] = false
maps.n["<C-Right>"] = false
maps.n["<C-Up>"] = false
maps.n["<C-q>"] = false

maps.i["<C-Tab>"] = { function() require("luasnip").expand() end }

-- switch tabs with H and L
-- maps.n.L = { function() require("astronvim.utils.buffer").nav(utils.v_count(1)) end, desc = "Next buffer" }
-- maps.n.H = { function() require("astronvim.utils.buffer").nav(-(utils.v_count(1))) end, desc = "Previous buffer" }

-- resize with arrows
maps.n["<Up>"] = { function() require("smart-splits").resize_up(utils.v_count(2)) end, desc = "Resize split up" }
maps.n["<Down>"] = { function() require("smart-splits").resize_down(utils.v_count(2)) end, desc = "Resize split down" }
maps.n["<Left>"] = { function() require("smart-splits").resize_left(utils.v_count(2)) end, desc = "Resize split left" }
maps.n["<Right>"] =
  { function() require("smart-splits").resize_right(utils.v_count(2)) end, desc = "Resize split right" }

-- easy linebreaks
maps.n["<C-CR>"] = { "o<Esc>", desc = "Add line below" }
maps.n["<S-C-CR>"] = { "O<Esc>", desc = "Add line above" }
maps.i["<C-CR>"] = { "<Esc>o", desc = "Add line below" }
maps.i["<S-C-CR>"] = { "<Esc>O", desc = "Add line above" }

maps.n["<leader>o"] = { "<cmd>Telescope file_browser<cr>", desc = "Telescope file browser" }

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

-- terminal mappings
maps.t["<C-q>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" }
maps.t["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" }

return maps
