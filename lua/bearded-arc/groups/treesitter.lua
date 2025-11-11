local M = {}

function M.get(colors)
	return {
		-- Identifiers
		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { fg = colors.red },
		["@variable.parameter"] = { fg = colors.pink },
		["@variable.member"] = { fg = colors.fg },

		-- Constants
		["@constant"] = { fg = colors.orange },
		["@constant.builtin"] = { fg = colors.orange },
		["@constant.macro"] = { fg = colors.cyan },

		["@module"] = { fg = colors.yellow },
		["@label"] = { fg = colors.magenta },

		-- Literals
		["@string"] = { fg = colors.green },
		["@string.documentation"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.cyan },
		["@string.regexp"] = { fg = colors.teal },
		["@string.special"] = { fg = colors.cyan },

		["@character"] = { fg = colors.green },
		["@character.special"] = { fg = colors.cyan },

		["@number"] = { fg = colors.orange },
		["@number.float"] = { fg = colors.orange },
		["@boolean"] = { fg = colors.orange },

		-- Functions
		["@function"] = { fg = colors.blue },
		["@function.builtin"] = { fg = colors.blue },
		["@function.call"] = { fg = colors.blue },
		["@function.macro"] = { fg = colors.cyan },
		["@function.method"] = { fg = colors.blue },
		["@function.method.call"] = { fg = colors.blue },

		["@constructor"] = { fg = colors.yellow },

		-- Keywords
		["@keyword"] = { fg = colors.magenta },
		["@keyword.conditional"] = { fg = colors.magenta },
		["@keyword.repeat"] = { fg = colors.magenta },
		["@keyword.return"] = { fg = colors.magenta },
		["@keyword.function"] = { fg = colors.magenta },
		["@keyword.operator"] = { fg = colors.magenta },
		["@keyword.import"] = { fg = colors.magenta },
		["@keyword.exception"] = { fg = colors.magenta },

		-- Operators
		["@operator"] = { fg = colors.cyan },

		-- Punctuation
		["@punctuation.delimiter"] = { fg = colors.fg },
		["@punctuation.bracket"] = { fg = colors.fg },
		["@punctuation.special"] = { fg = colors.cyan },

		-- Types
		["@type"] = { fg = colors.yellow },
		["@type.builtin"] = { fg = colors.yellow },
		["@type.definition"] = { fg = colors.yellow },
		["@type.qualifier"] = { fg = colors.magenta },

		["@attribute"] = { fg = colors.purple },
		["@property"] = { fg = colors.fg },

		-- Comments
		["@comment"] = { fg = colors.comment, italic = true },
		["@comment.documentation"] = { fg = colors.comment },
		["@comment.error"] = { fg = colors.error },
		["@comment.warning"] = { fg = colors.warning },
		["@comment.todo"] = { fg = colors.yellow },
		["@comment.note"] = { fg = colors.info },

		-- Markup (for markdown, etc.)
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },

		["@markup.heading"] = { fg = colors.blue, bold = true },
		["@markup.heading.1"] = { fg = colors.blue, bold = true },
		["@markup.heading.2"] = { fg = colors.yellow, bold = true },
		["@markup.heading.3"] = { fg = colors.green, bold = true },
		["@markup.heading.4"] = { fg = colors.cyan, bold = true },
		["@markup.heading.5"] = { fg = colors.magenta, bold = true },
		["@markup.heading.6"] = { fg = colors.orange, bold = true },

		["@markup.link"] = { fg = colors.cyan, underline = true },
		["@markup.link.url"] = { fg = colors.blue, underline = true },
		["@markup.link.label"] = { fg = colors.green },

		["@markup.list"] = { fg = colors.cyan },
		["@markup.list.checked"] = { fg = colors.green },
		["@markup.list.unchecked"] = { fg = colors.comment },

		["@markup.quote"] = { fg = colors.comment, italic = true },
		["@markup.raw"] = { fg = colors.green },

		["@diff.plus"] = { fg = colors.git_add },
		["@diff.minus"] = { fg = colors.git_delete },
		["@diff.delta"] = { fg = colors.git_change },

		-- Tags (HTML, XML, JSX)
		["@tag"] = { fg = colors.red },
		["@tag.attribute"] = { fg = colors.yellow },
		["@tag.delimiter"] = { fg = colors.fg },
	}
end

return M
