return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle left<CR>")
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
      window = {
        width = function()
        return math.floor(vim.o.columns * 0.3) -- 30% of current Vim width
      end,
      },
 		})
	end,
}
