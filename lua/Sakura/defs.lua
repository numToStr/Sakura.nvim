local M = {}

function M.groups(p, cfg)
    local background = cfg.transparent and p.none or p.base

    return {
        --------------------------------
        ------------- BASE -------------
        --------------------------------

        ColorColumn = { bg = p.highlight_overlay },
        Conceal = { bg = p.none },
        Cursor = { reverse = true },
        CursorColumn = { bg = p.highlight },
        CursorIM = { reverse = true },
        CursorLine = { bg = p.highlight_inactive },
        CursorLineNr = { fg = p.subtle },
        DarkenedPanel = { bg = p.surface },
        DarkenedStatusline = { bg = p.surface },
        Directory = { fg = p.foam, bg = p.none },
        EndOfBuffer = { fg = p.base },
        ErrorMsg = { fg = p.love, bold = true },
        FoldColumn = {},
        Folded = { fg = p.text, bg = p.surface },
        IncSearch = { fg = p.base, bg = p.love },
        CurSearch = { link = 'IncSearch' },
        LineNr = { fg = p.inactive },
        MatchParen = { fg = p.text, bg = p.overlay },
        -- ModeMsg = {},
        MoreMsg = { fg = p.iris },
        NonText = { fg = p.inactive },
        Normal = { fg = p.text, bg = background },
        NormalFloat = { fg = p.text, bg = p.surface },
        FloatBorder = { fg = p.subtle, bg = p.surface },
        Pmenu = { fg = p.subtle, bg = p.surface },
        PmenuSbar = { bg = p.overlay },
        PmenuSel = { fg = p.base, bg = p.rose },
        PmenuThumb = { bg = p.inactive },
        Question = { fg = p.gold },
        -- QuickFixLine = {},
        Search = { fg = p.base, bg = p.rose },
        SpecialKey = { fg = p.foam },
        SpellBad = { undercurl = true, sp = p.love },
        SpellCap = { undercurl = true, sp = p.gold },
        SpellLocal = { undercurl = true, sp = p.iris },
        SpellRare = { undercurl = true, sp = p.foam },
        SignColumn = { fg = p.text, bg = background },
        StatusLine = { fg = p.text, bg = p.surface },
        StatusLineNC = { fg = p.subtle, bg = p.surface },
        TabLine = { fg = p.text, bg = p.base },
        TabLineFill = { fg = p.text, bg = p.overlay },
        TabLineSel = { fg = p.overlay, bg = p.rose }, -- For current tab indicator in bufferline.nvim
        -- StatusLineTerm = {},
        -- StatusLineTermNC = {},
        Title = { fg = p.rose },
        VertSplit = { fg = p.overlay },
        Visual = { bg = p.highlight },
        -- VisualNOS = {},
        WarningMsg = { fg = p.gold },
        -- Whitespace = {},
        -- WildMenu = {},

        Boolean = { fg = p.gold },
        Character = { fg = p.gold },
        Comment = { fg = p.inactive },
        Conditional = { fg = p.pine },
        Constant = { fg = p.gold },
        Debug = { fg = p.rose },
        Define = { fg = p.iris },
        Delimiter = { fg = p.rose },
        Error = { fg = p.love },
        Exception = { fg = p.pine },
        Float = { fg = p.gold },
        Function = { fg = p.rose },
        Identifier = { fg = p.rose },
        -- Ignore = {},
        Include = { fg = p.iris },
        Keyword = { fg = p.pine },
        Label = { fg = p.foam },
        Macro = { fg = p.iris },
        Number = { fg = p.gold },
        Operator = { fg = p.subtle },
        PreCondit = { fg = p.iris },
        PreProc = { fg = p.iris },
        Repeat = { fg = p.pine },
        Special = { fg = p.rose },
        SpecialChar = { fg = p.rose },
        SpecialComment = { fg = p.iris },
        Statement = { fg = p.pine },
        StorageClass = { fg = p.foam },
        String = { fg = p.gold },
        Structure = { fg = p.foam },
        Tag = { fg = p.rose },
        Todo = { fg = p.iris },
        Type = { fg = p.foam },
        Typedef = { fg = p.foam },
        Underlined = { fg = p.foam, undercurl = true },

        -- # Diff/diff
        DiffAdd = { fg = p.foam },
        DiffChange = { fg = p.rose },
        DiffDelete = { fg = p.love },
        DiffText = { fg = p.text },
        diffFile = { fg = p.subtle }, -- diff command on top
        diffIndexLine = { fg = p.inactive }, -- commit index below the diff command
        diffAdded = { link = 'DiffAdd' }, -- for added lines
        diffRemoved = { link = 'DiffDelete' }, -- for removed lines
        diffChanged = { link = 'DiffChange' }, -- IDK, maybe for changed lines
        diffNewFile = { link = 'DiffAdd' }, -- file with `+++ marker
        diffOldFile = { link = 'DiffDelete' }, -- file with `---` marker
        diffLine = { fg = p.inactive }, -- loc summary
        diffSubname = { fg = p.gold }, -- context after loc summary

        -- # HTML
        htmlArg = { fg = p.iris },
        htmlEndTag = { fg = p.subtle },
        htmlLink = { fg = p.text },
        htmlTag = { fg = p.subtle },
        htmlTagN = { fg = p.love },
        htmlTagName = { fg = p.foam },
        htmlH1 = { fg = p.rose },

        -- # markdown
        markdownH1 = { fg = p.love, bold = true },
        markdownH2 = { fg = p.rose, bold = true },
        markdownH3 = { fg = p.gold, bold = true },
        markdownH4 = { fg = p.foam, bold = true },
        markdownH5 = { fg = p.iris, bold = true },
        markdownH6 = { fg = p.pine, bold = true },
        markdownHeadingDelimiter = { fg = p.subtle, bold = true },
        markdownLinkText = { fg = p.iris },
        markdownLinkTextDelimiter = { link = 'Comment' },
        markdownUrl = { fg = p.pine },
        markdownLink = { link = 'markdownUrl' },
        markdownLinkDelimiter = { link = 'Comment' },
        markdownCode = { fg = p.rose },
        markdownCodeDelimiter = { fg = p.foam },
        markdownListMarker = { fg = p.love, bold = true },
        markdownOrderedListMarker = { link = 'markdownListMarker' },

        -- xml
        xmlTag = { fg = p.subtle },
        xmlTagName = { fg = p.rose },
        xmlAttrib = { fg = p.foam },
        xmlString = { fg = p.gold },

        --------------------------------------
        ------------- TREESITTER -------------
        --------------------------------------

        -- ["@annotation"] = {},
        -- ["@attribute"] = {},
        ['@boolean'] = { fg = p.rose },
        -- ["@character"] = {},
        ['@comment'] = { link = 'Comment' },
        -- ["@conditional"] = {},
        ['@constant.builtin'] = { fg = p.love },
        -- ["@constant.macro"] = {},
        ['@constant'] = { fg = p.foam },
        ['@constructor'] = { fg = p.foam },
        -- ["@emphasis"] = {},
        -- ["@error"] = {},
        -- ["@exception"] = {},
        ['@field'] = { fg = p.foam },
        -- ["@float"] = {},
        ['@function.builtin'] = { fg = p.love },
        -- ["@function.macro"] = {},
        ['@function'] = { fg = p.rose },
        ['@include'] = { fg = p.pine },
        ['@keyword'] = { fg = p.pine },
        -- ["@keyword.function"] = {},
        ['@keyword.operator'] = { fg = p.pine },
        ['@label'] = { fg = p.foam },
        -- ["@literal"] = {},
        -- ["@method"] = {},
        -- ["@namespace"] = {},
        -- ["@none"] = {},
        -- ["@number"] = {},
        ['@operator'] = { fg = p.pine },
        ['@parameter'] = { fg = p.iris },
        -- ["@parameter.reference"] = {},
        ['@property'] = { fg = p.iris },
        ['@punctuation.bracket'] = { fg = p.subtle },
        ['@punctuation.delimiter'] = { fg = p.subtle },
        ['@punctuation.special'] = { fg = p.subtle },
        -- ["@repeat"] = {},
        -- ["@strike"] = {},
        ['@string'] = { fg = p.gold },
        ['@string.escape'] = { fg = p.pine },
        -- ["@string.regex"] = {},
        -- ["@symbol"] = {},
        ['@tag'] = { fg = p.foam },
        ['@tag.delimiter'] = { fg = p.subtle },
        ['@text'] = { fg = p.text },
        -- ["@text.title"] = {},
        ['@text.uri'] = { fg = p.gold },
        -- ["@type"] = {},
        -- ["@type.builtin"] = {},
        -- ["@underline"] = {},
        ['@variable'] = { fg = p.text },
        ['@variable.builtin'] = { fg = p.love },

        -- rust
        ['@field.rust'] = { fg = p.rose },
        ['@type.rust'] = { fg = p.foam },
        ['@type.builtin.rust'] = { fg = p.love },
        ['@function.macro.rust'] = { fg = p.rose },

        -- graphql
        ['@parameter.graphql'] = { fg = p.rose },

        -- markdown
        ['@text.uri.markdown'] = { fg = p.iris },
        ['@text.reference.markdown'] = { fg = p.rose },

        -- nvim-treesitter-refactor
        TSDefinition = { bg = p.highlight_overlay },
        TSDefinitionUsage = { bg = p.highlight_overlay },
        TSCurrentScope = { bg = p.inactive },

        -------------------------------
        ------------- LSP -------------
        -------------------------------

        -- # lsp
        LspReferenceText = { fg = p.rose, bg = p.highlight },
        LspReferenceRead = { fg = p.rose, bg = p.highlight },
        LspReferenceWrite = { fg = p.rose, bg = p.highlight },

        -- # diagnostics
        DiagnosticError = { fg = p.love },
        DiagnosticWarn = { fg = p.gold },
        DiagnosticInfo = { fg = p.foam },
        DiagnosticHint = { fg = p.iris },

        DiagnosticUnderlineError = { sp = p.love, undercurl = true },
        DiagnosticUnderlineWarn = { sp = p.gold, undercurl = true },
        DiagnosticUnderlineInfo = { sp = p.foam, undercurl = true },
        DiagnosticUnderlineHint = { sp = p.iris, undercurl = true },

        DiagnosticDeprecated = { fg = p.subtle, strikethrough = true },
        DiagnosticUnnecessary = { link = 'DiagnosticDeprecated' },

        -----------------------------------
        ------------- PLUGINS -------------
        -----------------------------------

        -- telescope.nvim
        -- https://github.com/nvim-telescope/telescope.nvim
        TelescopeMatching = { fg = p.rose },
        TelescopeBorder = { fg = p.subtle },

        -- gitsigns.nvim
        -- https://github.com/lewis6991/gitsigns.nvim
        SignAdd = { fg = p.foam },
        SignChange = { fg = p.rose },
        SignDelete = { fg = p.love },
        GitSignsAdd = { fg = p.foam },
        GitSignsChange = { fg = p.rose },
        GitSignsDelete = { fg = p.love },

        -- modes.nvim
        -- https://github.com/mvllow/modes.nvim
        -- ModesCopy = { bg = p.gold },
        -- ModesDelete = { bg = p.love },
        -- ModesInsert = { bg = p.foam },
        -- ModesVisual = { bg = p.iris },

        -- nvim-tree.lua
        -- https://github.com/kyazdani42/nvim-tree.lua
        NvimTreeNormal = { fg = p.text },

        NvimTreeFileDeleted = { fg = p.love },
        NvimTreeFileDirty = { fg = p.rose },
        NvimTreeFileMerge = { fg = p.iris },
        NvimTreeFileNew = { fg = p.foam },
        NvimTreeFileRenamed = { fg = p.pine },
        NvimTreeFileStaged = { fg = p.iris },

        NvimTreeEmptyFolderName = { fg = p.inactive },
        NvimTreeFolderIcon = { fg = p.rose },
        NvimTreeFolderName = { fg = p.foam },
        NvimTreeOpenedFile = { fg = p.text, bg = p.highlight },
        NvimTreeOpenedFolderName = { fg = p.foam },
        NvimTreeRootFolder = { fg = p.subtle },
        NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
        NvimTreeIndentMarker = { fg = p.overlay },
        NvimTreeWindowPicker = { fg = p.base, bg = p.iris },

        NvimTreeGitDeleted = { fg = p.love },
        NvimTreeGitDirty = { fg = p.rose },
        NvimTreeGitIgnored = { fg = p.subtle },
        NvimTreeGitMerge = { fg = p.iris },
        NvimTreeGitNew = { fg = p.foam },
        NvimTreeGitRenamed = { fg = p.pine },
        NvimTreeGitStaged = { fg = p.iris },

        -- hop.nvim
        -- https://github.com/phaazon/hop.nvim
        HopNextKey = { fg = p.text },
        HopNextKey1 = { fg = p.text },
        HopNextKey2 = { fg = p.foam },
        HopUnmatched = { fg = p.inactive },

        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = p.overlay },

        -- nvim-cmp
        -- https://github.com/hrsh7th/nvim-cmp
        -- NOTE: selected item is highlighted by `PmenuSel`
        CmpItemKind = { fg = p.foam },
        CmpItemAbbr = { fg = p.subtle },
        CmpItemAbbrMatch = { fg = p.rose },
        CmpItemAbbrMatchFuzzy = { fg = p.rose },
        CmpItemAbbrDeprecated = { link = 'DiagnosticDeprecated' },

        CmpItemKindSnippet = { fg = p.pine },

        CmpItemKindClass = { fg = p.gold },
        CmpItemKindStruct = { fg = p.gold },

        CmpItemKindInterface = { fg = p.foam },
        CmpItemKindKeyword = { fg = p.foam },

        CmpItemKindFunction = { fg = p.iris },
        CmpItemKindMethod = { fg = p.iris },

        CmpItemKindText = { fg = p.text },
        CmpItemKindVariable = { fg = p.text },
        CmpItemKindProperty = { fg = p.text },
        CmpItemKindUnit = { fg = p.text },
    }
end

function M.load_terminal(palette)
    -- black
    vim.g.terminal_color_0 = palette.overlay
    vim.g.terminal_color_8 = palette.subtle
    -- red
    vim.g.terminal_color_1 = palette.love
    vim.g.terminal_color_9 = palette.love
    -- green
    vim.g.terminal_color_2 = palette.foam
    vim.g.terminal_color_10 = palette.foam
    -- yellow
    vim.g.terminal_color_3 = palette.gold
    vim.g.terminal_color_11 = palette.gold
    -- blue
    vim.g.terminal_color_4 = palette.pine
    vim.g.terminal_color_12 = palette.pine
    -- magenta
    vim.g.terminal_color_5 = palette.iris
    vim.g.terminal_color_13 = palette.iris
    -- cyan
    vim.g.terminal_color_6 = palette.rose
    vim.g.terminal_color_14 = palette.rose
    -- white
    vim.g.terminal_color_7 = palette.text
    vim.g.terminal_color_15 = palette.text
end

return M
