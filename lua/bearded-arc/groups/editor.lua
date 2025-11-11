local M = {}

function M.get(colors, opts)
	opts = opts or {}

	-- Determine background colors based on transparency
	local bg = opts.transparent and "NONE" or colors.bg
	local bg_sidebar = opts.transparent and "NONE" or colors.bg_sidebar
	local bg_float = opts.transparent and "NONE" or colors.bg_float
	local bg_statusline = opts.transparent and "NONE" or colors.bg_statusline

	return {
		-- Editor UI
		Normal = { fg = colors.fg, bg = bg },
		NormalFloat = { fg = colors.fg, bg = bg_float },
		FloatBorder = { fg = colors.border, bg = bg_float },
		FloatTitle = { fg = colors.blue, bg = bg_float },

		ColorColumn = { bg = colors.bg_highlight },
		Conceal = { fg = colors.comment },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorIM = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = opts.transparent and "NONE" or colors.bg_highlight },
		CursorColumn = { bg = opts.transparent and "NONE" or colors.bg_highlight },
		CursorLineNr = { fg = colors.yellow, bold = true },
		LineNr = { fg = colors.fg_gutter },

		Directory = { fg = colors.blue },

		DiffAdd = { fg = colors.git_add },
		DiffChange = { fg = colors.git_change },
		DiffDelete = { fg = colors.git_delete },
		DiffText = { fg = colors.diff_text, bg = colors.bg_highlight },

		EndOfBuffer = { fg = bg }, -- Use bg here so it matches

		ErrorMsg = { fg = colors.error },
		WarningMsg = { fg = colors.warning },

		Folded = { fg = colors.comment, bg = opts.transparent and "NONE" or colors.bg_highlight },
		FoldColumn = { fg = colors.comment, bg = bg },

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

		SignColumn = { fg = colors.fg_gutter, bg = bg },

		SpecialKey = { fg = colors.comment },

		SpellBad = { sp = colors.error, undercurl = true },
		SpellCap = { sp = colors.warning, undercurl = true },
		SpellLocal = { sp = colors.info, undercurl = true },
		SpellRare = { sp = colors.hint, undercurl = true },

		StatusLine = { fg = colors.fg, bg = bg_statusline },
		StatusLineNC = { fg = colors.comment, bg = bg_statusline },

		TabLine = { fg = colors.fg_dark, bg = opts.transparent and "NONE" or colors.bg_highlight },
		TabLineFill = { bg = bg },
		TabLineSel = { fg = colors.fg, bg = bg },

		Title = { fg = colors.blue, bold = true },

		Visual = { bg = colors.selection },
		VisualNOS = { bg = colors.selection },

		VertSplit = { fg = colors.border, bg = bg },
		WinSeparator = { fg = colors.border, bg = bg },

		Whitespace = { fg = colors.fg_gutter },
		WildMenu = { bg = colors.selection },

		WinBar = { fg = colors.fg, bg = bg },
		WinBarNC = { fg = colors.comment, bg = bg },
	}
end

return M
