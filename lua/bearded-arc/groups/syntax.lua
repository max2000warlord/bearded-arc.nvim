local M = {}

function M.get(colors)
	return {
		Comment = { fg = colors.comment, italic = true },

		Constant = { fg = colors.orange },
		String = { fg = colors.green },
		Character = { fg = colors.green },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange },
		Float = { fg = colors.orange },

		Identifier = { fg = colors.blue },
		Function = { fg = colors.blue },

		Statement = { fg = colors.magenta },
		Conditional = { fg = colors.magenta },
		Repeat = { fg = colors.magenta },
		Label = { fg = colors.magenta },
		Operator = { fg = colors.cyan },
		Keyword = { fg = colors.magenta },
		Exception = { fg = colors.magenta },

		PreProc = { fg = colors.cyan },
		Include = { fg = colors.magenta },
		Define = { fg = colors.magenta },
		Macro = { fg = colors.cyan },
		PreCondit = { fg = colors.cyan },

		Type = { fg = colors.yellow },
		StorageClass = { fg = colors.yellow },
		Structure = { fg = colors.yellow },
		Typedef = { fg = colors.yellow },

		Special = { fg = colors.cyan },
		SpecialChar = { fg = colors.orange },
		Tag = { fg = colors.red },
		Delimiter = { fg = colors.fg },
		SpecialComment = { fg = colors.comment },
		Debug = { fg = colors.red },

		Underlined = { underline = true },
		Ignore = { fg = colors.comment },
		Error = { fg = colors.error },
		Todo = { fg = colors.bg, bg = colors.yellow, bold = true },
	}
end

return M
