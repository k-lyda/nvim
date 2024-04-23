require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- overwrite default mapping for terminal as there are issues on Mac with alt 

map("n", "<leader>nt", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })

-- toggleable
map({ "n" }, "<leader>tv", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.3 }
end, { desc = "Terminal toggle vertical term" })

map({ "n" }, "<leader>th", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.3 }
end, { desc = "Terminal toggle horizontal term" })

map({ "n" }, "<leader>ti", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal toggle Floating term" })

map({ "t" }, "<C-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.3 }
end, { desc = "Terminal toggle vertical term" })

map({ "t" }, "<C-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.3 }
end, { desc = "Terminal toggle horizontal term" })

map({ "t" }, "<C-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal toggle Floating term" })
