-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Normal Mode
vim.keymap.set("n", "<C-s>", "<cmd>write<cr>", { desc = "Save file" })
vim.keymap.set("n", "<C-q>", "<cmd>quit<cr>", { desc = "Quit NeoVim" })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<C-e>", vim.cmd.bnext)
vim.keymap.set("n", "<C-s>", vim.cmd.bprev)
vim.keymap.set("n", "<leader>qq", vim.cmd.bd)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>tt", "<cmd>terminal<cr>", { desc = "Open Terminal Buffer" })

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "Toggle FileTree" })
vim.keymap.set(
	"n",
	"<leader>co",
	"<cmd>NvimTreeCollapseKeepBuffers<cr>",
	{ desc = "FileTree Collapse Keeping Buffers" }
)

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Insert Mode
-- Auto close
vim.keymap.set("i", '"', '""<Left>')
-- vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "{", "{}<Left>")

-- Visual Mode
-- Visual mode mappings to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")