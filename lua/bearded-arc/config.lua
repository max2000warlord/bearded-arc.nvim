local M = {}

M.options = {
	transparent = false,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = {},
		functions = {},
		variables = {},
	},
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
