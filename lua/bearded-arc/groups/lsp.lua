local M = {}

function M.get(colors)
	return {
		-- Diagnostics
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.hint },

		DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg },
		DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg },
		DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg },
		DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg },

		DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
		DiagnosticUnderlineWarn = { sp = colors.warning, undercurl = true },
		DiagnosticUnderlineInfo = { sp = colors.info, undercurl = true },
		DiagnosticUnderlineHint = { sp = colors.hint, undercurl = true },

		DiagnosticSignError = { fg = colors.error },
		DiagnosticSignWarn = { fg = colors.warning },
		DiagnosticSignInfo = { fg = colors.info },
		DiagnosticSignHint = { fg = colors.hint },

		-- LSP Semantic Tokens
		["@lsp.type.class"] = { fg = colors.yellow },
		["@lsp.type.decorator"] = { fg = colors.purple },
		["@lsp.type.enum"] = { fg = colors.yellow },
		["@lsp.type.enumMember"] = { fg = colors.orange },
		["@lsp.type.function"] = { fg = colors.blue },
		["@lsp.type.interface"] = { fg = colors.yellow },
		["@lsp.type.macro"] = { fg = colors.cyan },
		["@lsp.type.method"] = { fg = colors.blue },
		["@lsp.type.namespace"] = { fg = colors.yellow },
		["@lsp.type.parameter"] = { fg = colors.pink },
		["@lsp.type.property"] = { fg = colors.fg },
		["@lsp.type.struct"] = { fg = colors.yellow },
		["@lsp.type.type"] = { fg = colors.yellow },
		["@lsp.type.typeParameter"] = { fg = colors.yellow },
		["@lsp.type.variable"] = { fg = colors.fg },

		-- LSP References
		LspReferenceText = { bg = colors.selection },
		LspReferenceRead = { bg = colors.selection },
		LspReferenceWrite = { bg = colors.selection },

		-- LSP Code Lens
		LspCodeLens = { fg = colors.comment },
		LspCodeLensSeparator = { fg = colors.comment },

		-- LSP Signature Help
		LspSignatureActiveParameter = { fg = colors.orange, bold = true },
	}
end

return M
