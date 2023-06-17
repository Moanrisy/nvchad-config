--- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

--- Run the command at startup
vim.cmd([[
  augroup StartupCommands
    autocmd!
    autocmd VimEnter * lua require('telescope').extensions.possession.list()
  augroup END
]])

-- change default startup dir
-- vim.cmd('autocmd VimEnter * lua vim.fn.chdir(vim.fn.expand("$HOME/AppData/Local/nvim/lua/custom/"))')
vim.cmd('autocmd VimEnter * lua vim.fn.chdir(vim.fn.expand("$HOME/.config/nvim/lua/custom/"))')

-- system clipboard
vim.api.nvim_set_keymap('n', '<c-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<c-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<s-insert>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('i', '<s-insert>', '<c-r>+', { noremap = true })
vim.api.nvim_set_keymap('c', '<s-insert>', '<c-r>+', { noremap = true })
-- use <c-r> to insert original character without triggering things like auto-pairs
vim.api.nvim_set_keymap('i', '<c-r>', '<s-insert>', { noremap = true })

---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'oceanic-light'}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
