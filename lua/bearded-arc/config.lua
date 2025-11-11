local M = {}

M.options = {
	transparent = true, -- Changed from false - now respects terminal opacity by default
	transparent_sidebar = false,
	terminal_colors = true,
	dim_inactive = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = {},
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
	sidebars = { "qf", "help", "vista_kind", "terminal", "packer" },
	hide_inactive_statusline = false,
	lualine_bold = false,
}
