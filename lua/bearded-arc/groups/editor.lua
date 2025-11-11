local M = {}

function M.get(colors, opts)
	opts = opts or {}

	local highlights = {
		-- Editor UI
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_float },
		FloatBorder = { fg = colors.border, bg = colors.bg_float },
		FloatTitle = { fg = colors.blue, bg = colors.bg_float },

		-- ... rest of highlights
	}

	-- If transparent, remove certain backgrounds
	if opts.transparent then
		highlights.NormalFloat.bg = "NONE"
		highlights.FloatBorder.bg = "NONE"
		highlights.FloatTitle.bg = "NONE"
		-- Keep float borders visible
		highlights.FloatBorder.fg = colors.border
	end

	return highlights
end

return M
