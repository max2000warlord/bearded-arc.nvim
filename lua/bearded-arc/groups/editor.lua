local M = {}

function M.get(colors)
	return {
		-- Editor UI
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_float },
		FloatBorder = { fg = colors.border, bg = colors.bg_float },
		FloatTitle = { fg = colors.blue, bg = colors.bg_float },

		ColorColumn = { bg = colors.bg_highlight },
		Conceal = { fg = colors.comment },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorIM = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = colors.bg_highlight },
		CursorColumn = { bg = colors.bg_highlight },
		CursorLineNr = { fg = colors.yellow, bold = true },
		LineNr = { fg = colors.fg_gutter },

		Directory = { fg = colors.blue },

		DiffAdd = { fg = colors.git_add },
		DiffChange = { fg = colors.git_change },
		DiffDelete = { fg = colors.git_delete },
		DiffText = { fg = colors.diff_text, bg = colors.bg_highlight },

		EndOfBuffer = { fg = colors.bg },

		ErrorMsg = { fg = colors.error },
		WarningMsg = { fg = colors.warning },

		Folded = { fg = colors.comment, bg = colors.bg_highlight },
		FoldColumn = { fg = colors.comment },

		IncSearch = { fg = colors.bg, bg = colors.orange },
		Search = { fg = colors.bg, bg = colors.yellow },
		CurSearch = { fg = colors.bg, bg = colors.orange },
		Substitute = { fg = colors.bg, bg = colors.red },

		MatchParen = { fg = colors.orange, bold = true },

		ModeMsg = { fg = colors.fg, bold = true },
		MoreMsg = { fg = colors.blue },

		NonText = { fg = colors.comment },

		Pmenu = { fg = colors.fg, bg = colors.bg_popup },
		PmenuSel = { bg = colors.selection },
		PmenuSbar = { bg = colors.bg_sidebar },
		PmenuThumb = { bg = colors.fg_gutter },

		Question = { fg = colors.blue },
		QuickFixLine = { bg = colors.selection },

		SignColumn = { fg = colors.fg_gutter, bg = colors.bg },

		SpecialKey = { fg = colors.comment },

		SpellBad = { sp = colors.error, undercurl = true },
		SpellCap = { sp = colors.warning, undercurl = true },
		SpellLocal = { sp = colors.info, undercurl = true },
		SpellRare = { sp = colors.hint, undercurl = true },

		StatusLine = { fg = colors.fg, bg = colors.bg_statusline },
		StatusLineNC = { fg = colors.comment, bg = colors.bg_statusline },

		TabLine = { fg = colors.fg_dark, bg = colors.bg_highlight },
		TabLineFill = { bg = colors.bg },
		TabLineSel = { fg = colors.fg, bg = colors.bg },

		Title = { fg = colors.blue, bold = true },

		Visual = { bg = colors.selection },
		VisualNOS = { bg = colors.selection },

		VertSplit = { fg = colors.border },
		WinSeparator = { fg = colors.border },

		Whitespace = { fg = colors.fg_gutter },
		WildMenu = { bg = colors.selection },

		WinBar = { fg = colors.fg },
		WinBarNC = { fg = colors.comment },
	}
end

return M
