local M = {}

M.palette = {
	-- Background colors
	bg = "#1c2433",
	bg_dark = "#19212e",
	bg_highlight = "#262e3d",
	bg_sidebar = "#232b3a",
	bg_float = "#232b3a",
	bg_popup = "#232b3a",
	bg_statusline = "#232b3a",

	-- Foreground colors
	fg = "#ABB7C1",
	fg_dark = "#a1adb7",
	fg_gutter = "#444c5b",

	-- Base colors
	black = "#1c2433",
	red = "#FF738A",
	green = "#3CEC85",
	yellow = "#EACD61",
	blue = "#69C3FF",
	magenta = "#B78AFF",
	cyan = "#22ECDB",
	white = "#ABB7C1",
	orange = "#FF955C",
	pink = "#ee9cdd",
	purple = "#bd93ff",
	teal = "#12c7c4",

	-- UI specific
	comment = "#626a79",
	border = "#444c5b",
	line = "#303847",
	selection = "#303847",

	-- Diff colors
	diff_add = "#3CEC85",
	diff_change = "#69C3FF",
	diff_delete = "#FF738A",
	diff_text = "#EACD61",

	-- Git colors
	git_add = "#3CEC85",
	git_change = "#EACD61",
	git_delete = "#FF738A",

	-- Diagnostic colors
	error = "#FF738A",
	warning = "#EACD61",
	info = "#69C3FF",
	hint = "#22ECDB",

	-- Additional semantic colors
	none = "NONE",
}

return M
