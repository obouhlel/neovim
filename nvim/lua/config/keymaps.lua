
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



-- telescope ------------------------------------------------------------------

-- main menu
keymap('n', '<leader>t', '<cmd>Telescope<cr>')

-- find files
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')

-- telescope git files
keymap('n', '<leader>gf', '<cmd>Telescope git_files<cr>')

-- telescope man pages
keymap('n', '<leader>m', '<cmd>Telescope man_pages<cr>')

-- telescope grep string
keymap('n', '<leader>gs', '<cmd>Telescope grep_string<cr>')

-- telescope live grep
keymap('n', '<leader>lg', '<cmd>Telescope live_grep<cr>')

-- telescope buffers
keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>')

-- nvim-tree ------------------------------------------------------------------

-- toggle nvim-tree
keymap('n', '<leader>fb', '<cmd>NvimTreeToggle<cr>')


-- navbuddy -------------------------------------------------------------------

-- open navbuddy
keymap('n', '<leader>n', '<cmd>Navbuddy<cr>')



-- trouble --------------------------------------------------------------------

-- open trouble
keymap('n', '<leader>d', function() require('trouble').toggle() end, { desc = 'trouble toggle' })
keymap('n', '<leader>q', function() require('trouble').toggle('quickfix') end, { desc = 'open quickfix' })

--keymap('n', '<leader>w', function() require('trouble').toggle('workspace_diagnostics') end, { desc = 'open workspace diagnostics' })
--keymap('n', '<leader>d', function() require('trouble').toggle('document_diagnostics') end, { desc = 'open document diagnostics' })
--keymap('n', '<leader>o', function() require('trouble').toggle('loclist') end, { desc = 'open loclist' })
--keymap('n', 'gR', function() require('trouble').toggle('lsp_references') end, { desc = 'open lsp references' })



-- window splitting -----------------------------------------------------------

-- vertical split
keymap('n', '<leader>v', '<cmd>vsplit<cr>')

-- horizontal split
keymap('n', '<leader>h', '<cmd>split<cr>')


-- unmap keys -----------------------------------------------------------------

-- unmap
keymap('n', '<C-j>', '<nop>')
keymap('n', '<C-k>', '<nop>')
keymap('n', '<C-i>', '<nop>')
keymap('n', '<C-l>', '<nop>')



-- window resizing ------------------------------------------------------------

-- resize window
keymap('n', '<C-j>', '<cmd>vertical resize +1<cr>')
keymap('n', '<C-k>', '<cmd>resize +1<cr>')



-- i to h remap ---------------------------------------------------------------

keymap('n', 'i', '<nop>')
keymap('n', '<S-i>', '<nop>')
keymap('n', 'h', '<insert>')
keymap('n', '<S-h>', '<S-i>')
keymap('v', '<S-h>', '<S-i>')
keymap('v', '<S-i>', '<nop>')



-- unmap enter ----------------------------------------------------------------

keymap('n', '<CR>', '<nop>')


-- movements ------------------------------------------------------------------

-- move left window
keymap('n', 'j', '<C-w><left>')
keymap('n', 'l', '<C-w><right>')
keymap('n', 'i', '<C-w><up>')
keymap('n', 'k', '<C-w><down>')



-- tabs -----------------------------------------------------------------------

-- unmap recording
keymap('n', 'q', '<nop>')
keymap('n', 'Q', '<nop>')
-- new tab
keymap('n', 'q', '<cmd>tabnew<cr>')
-- next tab
keymap('n', '<Tab>', '<cmd>tabnext<cr>')
-- previous tab
keymap('n', '<S-Tab>', '<cmd>tabprevious<cr>')


-- buffers --------------------------------------------------------------------

-- buffer next
keymap('n', '<S-k>', '<cmd>bnext<cr>')
-- buffer previous
keymap('n', '<S-i>', '<cmd>bprevious<cr>')
-- ??
keymap('n', '<S-l>', '<nop>')


-- definition / declaration ---------------------------------------------------

-- switch to definition / declaration
keymap('n', '.', '<C-]>')
-- back to previous position
keymap('n', ',', '<C-t>')





-- disable 'gc' for comment.lua plugin
keymap('n', 'gc', '<Nop>')

-- disable 'gb' for comment.lua plugin
keymap('n', 'gb', '<Nop>')

