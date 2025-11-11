local M = {}

function M.get(colors, opts)
	opts = opts or {}

	local bg_sidebar = opts.transparent and "NONE" or colors.bg_sidebar
	local bg_float = opts.transparent and "NONE" or colors.bg_float

	return {
		-- Git Signs
		GitSignsAdd = { fg = colors.git_add },
		GitSignsChange = { fg = colors.git_change },
		GitSignsDelete = { fg = colors.git_delete },
		GitSignsAddLn = { fg = colors.git_add, bg = colors.bg_highlight },
		GitSignsChangeLn = { fg = colors.git_change, bg = colors.bg_highlight },
		GitSignsDeleteLn = { fg = colors.git_delete, bg = colors.bg_highlight },

		-- Telescope
		TelescopeBorder = { fg = colors.border, bg = bg_float },
		TelescopeNormal = { fg = colors.fg, bg = bg_float },
		TelescopePromptBorder = { fg = colors.border, bg = bg_float },
		TelescopePromptNormal = { fg = colors.fg, bg = bg_float },
		TelescopePromptPrefix = { fg = colors.blue },
		TelescopePromptTitle = { fg = colors.blue, bold = true },
		TelescopePreviewTitle = { fg = colors.green, bold = true },
		TelescopeResultsTitle = { fg = colors.cyan, bold = true },
		TelescopeSelection = { fg = colors.fg, bg = colors.selection },
		TelescopeSelectionCaret = { fg = colors.blue, bg = colors.selection },
		TelescopeMatching = { fg = colors.yellow, bold = true },

		-- Neo-tree
		NeoTreeNormal = { fg = colors.fg, bg = bg_sidebar },
		NeoTreeNormalNC = { fg = colors.fg, bg = bg_sidebar },
		NeoTreeDirectoryIcon = { fg = colors.blue },
		NeoTreeDirectoryName = { fg = colors.blue },
		NeoTreeFileName = { fg = colors.fg },
		NeoTreeFileIcon = { fg = colors.fg },
		NeoTreeFileNameOpened = { fg = colors.green },
		NeoTreeIndentMarker = { fg = colors.fg_gutter },
		NeoTreeGitAdded = { fg = colors.git_add },
		NeoTreeGitConflict = { fg = colors.orange },
		NeoTreeGitDeleted = { fg = colors.git_delete },
		NeoTreeGitIgnored = { fg = colors.comment },
		NeoTreeGitModified = { fg = colors.git_change },
		NeoTreeGitUntracked = { fg = colors.purple },
		NeoTreeRootName = { fg = colors.blue, bold = true },

		-- Which-key
		WhichKey = { fg = colors.blue },
		WhichKeyGroup = { fg = colors.cyan },
		WhichKeyDesc = { fg = colors.fg },
		WhichKeySeparator = { fg = colors.comment },
		WhichKeyFloat = { bg = bg_float },
		WhichKeyBorder = { fg = colors.border, bg = bg_float },

		-- Notify
		NotifyERRORBorder = { fg = colors.error },
		NotifyWARNBorder = { fg = colors.warning },
		NotifyINFOBorder = { fg = colors.info },
		NotifyDEBUGBorder = { fg = colors.comment },
		NotifyTRACEBorder = { fg = colors.purple },
		NotifyERRORIcon = { fg = colors.error },
		NotifyWARNIcon = { fg = colors.warning },
		NotifyINFOIcon = { fg = colors.info },
		NotifyDEBUGIcon = { fg = colors.comment },
		NotifyTRACEIcon = { fg = colors.purple },
		NotifyERRORTitle = { fg = colors.error },
		NotifyWARNTitle = { fg = colors.warning },
		NotifyINFOTitle = { fg = colors.info },
		NotifyDEBUGTitle = { fg = colors.comment },
		NotifyTRACETitle = { fg = colors.purple },

		-- Indent Blankline
		IndentBlanklineChar = { fg = colors.fg_gutter },
		IndentBlanklineContextChar = { fg = colors.cyan },
		IblIndent = { fg = colors.fg_gutter },
		IblScope = { fg = colors.cyan },

		-- Dashboard
		DashboardShortCut = { fg = colors.blue },
		DashboardHeader = { fg = colors.cyan },
		DashboardCenter = { fg = colors.green },
		DashboardFooter = { fg = colors.comment, italic = true },

		-- Lazy.nvim
		LazyButton = { bg = colors.selection, fg = colors.fg },
		LazyButtonActive = { bg = colors.bg_highlight, fg = colors.blue, bold = true },
		LazyH1 = { bg = colors.blue, fg = colors.bg, bold = true },
		LazyProgressDone = { fg = colors.green, bold = true },
		LazyProgressTodo = { fg = colors.fg_gutter },

		-- Noice
		NoicePopup = { bg = bg_float },
		NoicePopupBorder = { fg = colors.border, bg = bg_float },
		NoiceCmdlinePopup = { bg = bg_float },
		NoiceCmdlinePopupBorder = { fg = colors.border, bg = bg_float },
		NoiceCmdlineIcon = { fg = colors.blue },
		NoiceCmdlinePopupTitle = { fg = colors.blue },

		-- Mini
		MiniIndentscopeSymbol = { fg = colors.cyan },
		MiniStarterHeader = { fg = colors.cyan },
		MiniStarterFooter = { fg = colors.comment, italic = true },
		MiniStarterCurrent = { bg = colors.selection },
		MiniStarterSection = { fg = colors.blue },
		MiniStarterItemPrefix = { fg = colors.yellow },
		MiniStarterItem = { fg = colors.fg },
		MiniStarterQuery = { fg = colors.green },
	}
end

return M
