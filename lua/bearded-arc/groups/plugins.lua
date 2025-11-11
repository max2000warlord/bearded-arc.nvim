local M = {}

function M.get(colors, opts)
	opts = opts or {}

	local highlights = {
		-- Neo-tree
		NeoTreeNormal = { fg = colors.fg, bg = colors.bg_sidebar },
		NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg_sidebar },
		-- ... rest
	}

	-- Handle transparency for sidebars
	if opts.transparent then
		highlights.NeoTreeNormal.bg = "NONE"
		highlights.NeoTreeNormalNC.bg = "NONE"
	end

	return highlights
end

return M
