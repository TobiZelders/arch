vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true          -- absolute line numbers
vim.g.mapleader = " "
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<C-p>", '"+p', { noremap = true, silent = true })
vim.keymap.set("n", "<leader><BS>", "<cmd>close<CR>", { desc = "Close window" })
