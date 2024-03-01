vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>mx", ":MaximizerToggle<CR>")

-- Toggle Neotree
keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("Neotree close")
	else
		vim.cmd("Neotree filesystem reveal left")
	end
end, { silent = true, noremap = true })

-- close all
keymap.set("n", "<leader>qq", function()
	if vim.bo.filetype ~= "neo-tree" then
		vim.cmd("qa!")
	else
		vim.cmd("Neotree close")
		vim.cmd("qa!")
	end
end, { noremap = true, silent = true })

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {})
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})

-- gitsigns
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
