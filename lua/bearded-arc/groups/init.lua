local M = {}

function M.setup(colors, opts)
	opts = opts or {}

	local editor = require("bearded-arc.groups.editor")
	local syntax = require("bearded-arc.groups.syntax")
	local treesitter = require("bearded-arc.groups.treesitter")
	local lsp = require("bearded-arc.groups.lsp")
	local plugins = require("bearded-arc.groups.plugins")

	local highlights = {}

	-- Merge all highlight groups (pass opts to each)
	for group, hl in pairs(editor.get(colors, opts)) do
		highlights[group] = hl
	end

	for group, hl in pairs(syntax.get(colors, opts)) do
		highlights[group] = hl
	end

	for group, hl in pairs(treesitter.get(colors, opts)) do
		highlights[group] = hl
	end

	for group, hl in pairs(lsp.get(colors, opts)) do
		highlights[group] = hl
	end

	for group, hl in pairs(plugins.get(colors, opts)) do
		highlights[group] = hl
	end

	return highlights
end

return M
