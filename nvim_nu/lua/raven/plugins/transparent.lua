return {
	"xiyaowong/transparent.nvim",
	config = function()
		local transparent = require("transparent")

		transparent.setup({
			extra_groups = {
				"NvimTreeNormal",
			},
		})

		transparent.clear_prefix("Bufferline")
		transparent.clear_prefix("lualine")
		transparent.clear_prefix("nvim-tree")
		transparent.clear_prefix("tokyonight")
	end,
}
