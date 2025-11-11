local M = {}

function M.setup(opts)
	opts = opts or {}

	-- Clear previous highlights
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "bearded-arc"

	-- Load colors
	local colors = require("bearded-arc.colors").palette

	-- Load all highlight groups
	local highlights = require("bearded-arc.groups").setup(colors)

	-- Apply highlights
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end
end

-- Expose colors for external use
M.colors = function()
	return require("bearded-arc.colors").palette
end

return M
