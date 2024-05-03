-- N E O V I M  K E Y M A P ---------------------------------------------------
--       __
--      / /_____  __  ______ ___  ____ _____  _____
--     / //_/ _ \/ / / / __ `__ \/ __ `/ __ \/ ___/
--    / ,< /  __/ /_/ / / / / / / /_/ / /_/ (__  )
--   /_/|_|\___/\__, /_/ /_/ /_/\__,_/ .___/____/
--             /____/               /_/
-------------------------------------------------------------------------------
local keymap = vim.keymap.set

-- M A P P I N G S ------------------------------------------------------------

-- menu -----------------------------------------------------------------------
-- TODO: add keymaps for the main menu

-- telescope ------------------------------------------------------------------

-- main menu
keymap('n', '<leader>t', '<cmd>Telescope<cr>')

-- find files
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')

-- move -----------------------------------------------------------------------
-- up
if vim.api.nvim_get_keymap('n')['w'] then
	vim.api.nvim_set_keymap('n', 'k', vim.api.nvim_get_keymap('n')['w'], {})
end
vim.api.nvim_set_keymap('n', 'w', 'k', {})
-- down
if vim.api.nvim_get_keymap('n')['s'] then
	vim.api.nvim_set_keymap('n', 'j', vim.api.nvim_get_keymap('n')['s'], {})
end
vim.api.nvim_set_keymap('n', 's', 'j', {})
-- left
if vim.api.nvim_get_keymap('n')['a'] then
	vim.api.nvim_set_keymap('n', 'h', vim.api.nvim_get_keymap('n')['a'], {})
end
vim.api.nvim_set_keymap('n', 'a', 'h', {})
-- right
if vim.api.nvim_get_keymap('n')['d'] then
	vim.api.nvim_set_keymap('n', 'l', vim.api.nvim_get_keymap('n')['d'], {})
end
vim.api.nvim_set_keymap('n', 'd', 'l', {})
