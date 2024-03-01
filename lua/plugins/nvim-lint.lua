return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
		"BufWritePost",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			text = { "vale" },
			markdown = { "vale" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}

