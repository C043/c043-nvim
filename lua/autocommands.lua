local utils = require("utils")
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- NOTE Running files inside NeoVim autocommand
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		local filetype = vim.bo.filetype
		if filetype == "javascript" then
			vim.keymap.set("n", "<leader>rr", function()
				utils.TerminalOut("node " .. fileName)
			end)
		end
	end,
})

vim.cmd("autocmd BufNewFile,BufRead *.ejs set filetype=html")
