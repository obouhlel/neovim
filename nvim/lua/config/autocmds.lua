
-- C U R S O R  L I N E -------------------------------------------------------

-- show cursor line in normal mode and in active window
vim.api.nvim_create_autocmd(
	{ 'InsertLeave', 'WinEnter' },
	{
		callback = function()
			-- set cursorline
			vim.wo.cursorline = true
		end,
	}
)


-- clear cursor line in insert mode and in inactive window
vim.api.nvim_create_autocmd(
	{ 'InsertEnter', 'WinLeave' },
	{
		callback = function()
			-- clear cursorline
			vim.wo.cursorline = false
		end,
	}
)


-- Y A N K  P O S T  P R O C E S S I N G --------------------------------------

-- yank post processing
vim.api.nvim_create_autocmd(
	{ 'TextYankPost' },
	{
		callback = function()
			-- highlight yanked text
			vim.highlight.on_yank()
		end,
	}
)


-- I N D E N T ----------------------------------------------------------------

-- indent for c, cpp, h, hpp, swift
vim.api.nvim_create_autocmd('FileType',
	{
		pattern = 'swift',
		callback = function()
			-- auto-indent
			vim.opt_local.autoindent = true
			-- smart indent
			vim.opt_local.smartindent = true
			-- c indenting
			vim.opt_local.cindent = true
			-- insert tabs instead of spaces
			vim.opt_local.expandtab = false
			-- length of a tab
			vim.opt_local.tabstop = 4
			-- number of spaces when auto-indenting
			vim.opt_local.shiftwidth = 4
			-- number of spaces when tab is pressed
			vim.opt_local.softtabstop = 4
			-- round indent to multiple of shiftwidth
			vim.opt_local.shiftround = true

		end,
	}
)


-- M E T A L ------------------------------------------------------------------

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
	pattern = {"*.metal"},
	command = "set filetype=metal",
})

-- change filetype for metal files
--vim.filetype.add({ extension = { metal = 'cpp' } })

