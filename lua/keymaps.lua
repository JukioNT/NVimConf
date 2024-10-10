vim.g.leader = " "
vim.g.mapleader = " "

vim.keymap.set('n', "<C-s>", ":w<CR>", { noremap = true, silent = true })

--Copy paste with clipboard
vim.keymap.set("n", "y", '"+y', { noremap = true })
vim.keymap.set("v", "y", '"+y', { noremap = true })
vim.keymap.set("n", "p", '"+p', { noremap = true })
vim.keymap.set("v", "p", '"+p', { noremap = true })
vim.keymap.set("n", "d", '"+d', { noremap = true })
vim.keymap.set("v", "d", '"+d', { noremap = true })

--Telescope
vim.keymap.set("n", "<C-f>", function()
	require("telescope.builtin").find_files()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Live Grep" })

vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { noremap = true, silent = true, desc = "Buffers" })

vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { noremap = true, silent = true, desc = "Help Tags" })

--NeoTree
vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal right<CR>", { silent = true })

--Codeium
vim.keymap.set("i", "<C-g>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<C-;>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<C-,>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<C-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })

--LSP
vim.keymap.set("n", "<leader>lb", vim.lsp.buf.hover, { silent = true, desc = "LSP Hover" })
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, { silent = true, desc = "LSP Signature Help" })
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { silent = true, desc = "LSP Definition" })
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.type_definition, { silent = true, desc = "LSP Type Definition" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { silent = true, desc = "LSP Code Action" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { silent = true, desc = "LSP Rename" })

--NoneLS
vim.keymap.set("n", "<leader>nf", vim.lsp.buf.format, { silent = true, desc = "LSP Format" })


