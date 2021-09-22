local M = {}

function M.groups(p, cfg)
    local theme = {}

    local maybe_base = cfg.transparent and p.none or p.base
    local maybe_italic = cfg.italics and 'italic' or nil

    theme.base = {
        ColorColumn = { bg = p.highlight_overlay },
        Conceal = { bg = p.none },
        Cursor = { gui = 'inverse' },
        CursorColumn = { bg = p.highlight },
        CursorIM = { gui = 'inverse' },
        CursorLine = { bg = p.highlight_inactive },
        CursorLineNr = { fg = p.subtle },
        DarkenedPanel = { bg = p.surface },
        DarkenedStatusline = { bg = p.surface },
        Directory = { fg = p.foam, bg = p.none },
        EndOfBuffer = { fg = p.base },
        ErrorMsg = { fg = p.love, gui = 'bold' },
        FoldColumn = {},
        Folded = { fg = p.text, bg = p.surface },
        IncSearch = { fg = p.base, bg = p.love },
        LineNr = { fg = p.inactive },
        MatchParen = { fg = p.text, bg = p.overlay },
        -- ModeMsg = {},
        MoreMsg = { fg = p.iris },
        NonText = { fg = p.inactive },
        Normal = { fg = p.text, bg = maybe_base },
        NormalFloat = { fg = p.text, bg = p.surface },
        FloatBorder = { fg = p.subtle, bg = p.surface },
        Pmenu = { fg = p.subtle, bg = p.surface },
        PmenuSbar = { bg = p.overlay },
        PmenuSel = { fg = p.text, bg = p.overlay },
        PmenuThumb = { bg = p.inactive },
        Question = { fg = p.gold },
        -- QuickFixLine = {},
        Search = { fg = p.base, bg = p.rose },
        SpecialKey = { fg = p.foam },
        SpellBad = { gui = 'undercurl', sp = p.love },
        SpellCap = { gui = 'undercurl', sp = p.subtle },
        SpellLocal = { gui = 'undercurl', sp = p.subtle },
        SpellRare = { gui = 'undercurl', sp = p.subtle },
        SignColumn = { fg = p.text, bg = maybe_base },
        StatusLine = { fg = p.text, bg = p.surface },
        StatusLineNC = { fg = p.subtle, bg = p.surface },
        -- StatusLineTerm = {},
        -- StatusLineTermNC = {},
        -- TabLine = {},
        -- TabLineFill = {},
        -- TabLineSel = {},
        Title = { fg = p.rose },
        VertSplit = { fg = p.overlay },
        Visual = { bg = p.highlight },
        -- VisualNOS = {},
        WarningMsg = { fg = p.gold },
        -- Whitespace = {},
        -- WildMenu = {},

        Boolean = { fg = p.gold },
        Character = { fg = p.gold },
        Comment = { fg = p.inactive, gui = maybe_italic },
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
        Underlined = { fg = p.foam, gui = 'underline' },

        LspDiagnosticsDefaultHint = { fg = p.iris },
        LspDiagnosticsDefaultInformation = { fg = p.foam },
        LspDiagnosticsDefaultWarning = { fg = p.gold },
        LspDiagnosticsDefaultError = { fg = p.love },

        LspDiagnosticsFloatingHint = { fg = p.iris },
        LspDiagnosticsFloatingInformation = { fg = p.foam },
        LspDiagnosticsFloatingWarning = { fg = p.gold },
        LspDiagnosticsFloatingError = { fg = p.love },

        LspDiagnosticsSignHint = { fg = p.iris },
        LspDiagnosticsSignInformation = { fg = p.foam },
        LspDiagnosticsSignWarning = { fg = p.gold },
        LspDiagnosticsSignError = { fg = p.love },

        LspDiagnosticsUnderlineHint = { gui = 'undercurl', sp = p.iris },
        LspDiagnosticsUnderlineInformation = { gui = 'undercurl', sp = p.foam },
        LspDiagnosticsUnderlineWarning = { gui = 'undercurl', sp = p.gold },
        LspDiagnosticsUnderlineError = { gui = 'undercurl', sp = p.love },

        LspDiagnosticsVirtualTextHint = { fg = p.iris },
        LspDiagnosticsVirtualTextInformation = { fg = p.foam },
        LspDiagnosticsVirtualTextWarning = { fg = p.gold },
        LspDiagnosticsVirtualTextError = { fg = p.love },

        LspReferenceText = { fg = p.rose, bg = p.highlight },
        LspReferenceRead = { fg = p.rose, bg = p.highlight },
        LspReferenceWrite = { fg = p.rose, bg = p.highlight },

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
        markdownH1 = { fg = p.love, gui = 'bold' },
        markdownH2 = { fg = p.rose, gui = 'bold' },
        markdownH3 = { fg = p.gold, gui = 'bold' },
        markdownH4 = { fg = p.foam, gui = 'bold' },
        markdownH5 = { fg = p.iris, gui = 'bold' },
        markdownH6 = { fg = p.pine, gui = 'bold' },
        markdownHeadingDelimiter = { fg = p.subtle, gui = 'bold' },
        markdownLinkText = { fg = p.iris },
        markdownLinkTextDelimiter = { link = 'Comment' },
        markdownUrl = { fg = p.pine },
        markdownLink = { link = 'markdownUrl' },
        markdownLinkDelimiter = { link = 'Comment' },
        markdownCode = { fg = p.rose },
        markdownCodeDelimiter = { fg = p.foam },
        markdownListMarker = { fg = p.love, gui = 'bold' },
        markdownOrderedListMarker = { link = 'markdownListMarker' },

        -- xml
        xmlTag = { fg = p.subtle },
        xmlTagName = { fg = p.rose },
        xmlAttrib = { fg = p.foam },
        xmlString = { fg = p.gold },
    }

    theme.treesitter = {
        -- TSAnnotation = {},
        -- TSAttribute = {},
        TSBoolean = { fg = p.rose },
        -- TSCharacter = {},
        TSComment = { link = 'Comment' },
        -- TSConditional = {},
        TSConstBuiltin = { fg = p.love },
        -- TSConstMacro = {},
        TSConstant = { fg = p.foam },
        TSConstructor = { fg = p.foam },
        -- TSEmphasis = {},
        -- TSError = {},
        -- TSException = {},
        TSField = { fg = p.foam },
        -- TSFloat = {},
        TSFuncBuiltin = { fg = p.love },
        -- TSFuncMacro = {},
        TSFunction = { fg = p.rose },
        TSInclude = { fg = p.pine },
        TSKeyword = { fg = p.pine },
        -- TSKeywordFunction = {},
        TSKeywordOperator = { fg = p.pine },
        TSLabel = { fg = p.foam },
        -- TSLiteral = {},
        -- TSMethod = {},
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { fg = p.pine },
        TSParameter = { fg = p.iris, gui = maybe_italic },
        -- TSParameterReference = {},
        TSProperty = { fg = p.iris, gui = maybe_italic },
        TSPunctBracket = { fg = p.subtle },
        TSPunctDelimiter = { fg = p.subtle },
        TSPunctSpecial = { fg = p.subtle },
        -- TSRepeat = {},
        -- TSStrike = {},
        TSString = { fg = p.gold },
        TSStringEscape = { fg = p.pine },
        -- TSStringRegex = {},
        -- TSSymbol = {},
        TSTag = { fg = p.foam },
        TSTagDelimiter = { fg = p.subtle },
        TSText = { fg = p.text },
        -- TSTitle = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSURI = { fg = p.gold },
        -- TSUnderline = {},
        TSVariable = { fg = p.text, gui = maybe_italic },
        TSVariableBuiltin = { fg = p.love },

        -- nvim-treesitter-refactor
        TSDefinition = { bg = p.highlight_overlay },
        TSDefinitionUsage = { bg = p.highlight_overlay },
        TSCurrentScope = { bg = p.inactive },

        -- rust
        rustTSField = { fg = p.rose },
        rustTSType = { fg = p.foam },
        rustTSTypeBuiltin = { fg = p.love },
        rustTSFuncMacro = { fg = p.rose },

        -- graphql
        graphqlTSParameter = { fg = p.rose },
    }

    theme.plugins = {
        -- telescope.nvim
        -- https://github.com/nvim-telescope/telescope.nvim
        TelescopeMatching = { fg = p.rose },
        TelescopeBorder = { fg = p.subtle },

        -- barbar.nvim
        -- https://github.com/romgrk/barbar.nvim
        BufferTabpageFill = { bg = p.none },
        BufferCurrent = { fg = p.text, bg = p.overlay },
        BufferCurrentIndex = { fg = p.text, bg = p.overlay },
        BufferCurrentMod = { fg = p.foam, bg = p.overlay },
        BufferCurrentSign = { fg = p.subtle, bg = p.overlay },
        BufferInactive = { fg = p.subtle },
        BufferInactiveIndex = { fg = p.subtle },
        BufferInactiveMod = { fg = p.foam },
        BufferInactiveSign = { fg = p.subtle },
        BufferVisible = { fg = p.subtle },
        BufferVisibleIndex = { fg = p.subtle },
        BufferVisibleMod = { fg = p.foam },
        BufferVisibleSign = { fg = p.subtle },

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
        ModesCopy = { bg = p.gold },
        ModesDelete = { bg = p.love },
        ModesInsert = { bg = p.foam },
        ModesVisual = { bg = p.iris },

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

        -- which-key.nvim
        -- https://github.com/folke/which-key.nvim
        WhichKey = { fg = p.iris },
        WhichKeyGroup = { fg = p.foam },
        WhichKeySeparator = { fg = p.subtle },
        WhichKeyDesc = { fg = p.gold },
        WhichKeyFloat = { bg = p.surface },
        WhichKeyValue = { fg = p.rose },

        -- hop.nvim
        -- https://github.com/phaazon/hop.nvim
        HopNextKey = { fg = p.text },
        HopNextKey1 = { fg = p.text },
        HopNextKey2 = { fg = p.foam },
        HopUnmatched = { fg = p.inactive },

        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = p.overlay },
    }

    return theme
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
