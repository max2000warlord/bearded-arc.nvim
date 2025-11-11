local M = {}

M.options = {
	transparent = false,
	transparent_sidebar = false, -- Only make sidebars transparent
	terminal_colors = true,
	dim_inactive = false, -- Dim inactive windows
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = {},
		variables = {},
		sidebars = "dark", -- "dark", "transparent", "normal"
		floats = "dark", -- "dark", "transparent", "normal"
	},
	sidebars = { "qf", "help", "vista_kind", "terminal", "packer" },
	hide_inactive_statusline = false,
	lualine_bold = false,
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
