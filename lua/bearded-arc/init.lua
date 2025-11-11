local M = {}

function M.setup(opts)
	-- Setup config first
	local config = require("bearded-arc.config")
	config.setup(opts)

	-- Clear previous highlights
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "bearded-arc"

	-- Load colors
	local colors = require("bearded-arc.colors").palette

	-- Apply transparency settings
	if config.options.transparent then
		colors.bg = "NONE"
		colors.bg_sidebar = "NONE"
		colors.bg_float = "NONE"
		colors.bg_statusline = "NONE"
	end

	-- Load all highlight groups
	local highlights = require("bearded-arc.groups").setup(colors, config.options)

	-- Apply highlights
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	-- Set terminal colors if enabled
	if config.options.terminal_colors then
		M.set_terminal_colors(colors)
	end
end

function M.set_terminal_colors(colors)
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.comment
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.magenta
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.fg
end

-- Expose colors for external use
M.colors = function()
	return require("bearded-arc.colors").palette
end

return M
