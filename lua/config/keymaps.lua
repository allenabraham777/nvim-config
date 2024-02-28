vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>mx", ":MaximizerToggle<CR>")

-- Toggle Neotree
vim.keymap.set('n', '<leader>e', function()
  if vim.bo.filetype == 'neo-tree' then
    vim.cmd('Neotree close')
  else
    vim.cmd('Neotree filesystem reveal left')
  end
end, { silent = true, noremap = true })

-- close all
vim.keymap.set('n', '<leader>qq', function()
  if vim.bo.filetype ~= 'neo-tree' then
    vim.cmd('qa!')
  else
    vim.cmd('Neotree close')
    vim.cmd('qa!')
  end
end, { noremap = true, silent = true })

