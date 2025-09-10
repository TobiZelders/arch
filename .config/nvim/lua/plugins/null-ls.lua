return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		-- Helper function to check if a command is available
		local function executable_exists(cmd)
			return vim.fn.executable(cmd) == 1
		end

		-- Build sources list only if the executable exists
		local sources = {}

		if executable_exists("stylua") then
			table.insert(sources, null_ls.builtins.formatting.stylua)
		end

		if executable_exists("black") then
			table.insert(sources, null_ls.builtins.formatting.black)
		end

		if executable_exists("flake8") then
			table.insert(sources, null_ls.builtins.diagnostics.flake8)
		end

		if executable_exists("cpplint") then
			table.insert(sources, null_ls.builtins.diagnostics.cpplint)
		end

		if executable_exists("sonarlint-language-server") then
			table.insert(sources, null_ls.builtins.diagnostics.cpplint)
		end

		-- Setup null-ls
		null_ls.setup({
			sources = sources,
		})

		-- Keymap for formatting
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
