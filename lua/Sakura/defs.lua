local M = {}

function M.groups(palette, cfg)
    local theme = {}

    local maybe_base = cfg.transparent and palette.none or palette.base
    local maybe_italic = cfg.italics and 'italic' or nil

    theme.base = {
        ColorColumn = { bg = palette.highlight_overlay },
        Conceal = { bg = palette.none },
        Cursor = { gui = 'inverse' },
        CursorColumn = { bg = palette.highlight },
        CursorIM = { gui = 'inverse' },
        CursorLine = { bg = palette.highlight_inactive },
        CursorLineNr = { fg = palette.subtle },
        DarkenedPanel = { bg = palette.surface },
        DarkenedStatusline = { bg = palette.surface },
        DiffAdd = { fg = palette.foam },
        DiffChange = { fg = palette.rose },
        DiffDelete = { fg = palette.love },
        DiffText = { fg = palette.text },
        Directory = { fg = palette.foam, bg = palette.none },
        EndOfBuffer = { fg = palette.base },
        ErrorMsg = { fg = palette.love, gui = 'bold' },
        FoldColumn = {},
        Folded = { fg = palette.text, bg = palette.surface },
        IncSearch = { bg = palette.highlight },
        LineNr = { fg = palette.inactive },
        MatchParen = { fg = palette.text, bg = palette.overlay },
        -- ModeMsg = {},
        MoreMsg = { fg = palette.iris },
        NonText = { fg = palette.inactive },
        Normal = { fg = palette.text, bg = maybe_base },
        NormalFloat = { fg = palette.text, bg = palette.surface },
        FloatBorder = { fg = palette.subtle, bg = palette.surface },
        Pmenu = { fg = palette.subtle, bg = palette.surface },
        PmenuSbar = { bg = palette.overlay },
        PmenuSel = { fg = palette.text, bg = palette.overlay },
        PmenuThumb = { bg = palette.inactive },
        Question = { fg = palette.gold },
        -- QuickFixLine = {},
        Search = { fg = palette.iris, bg = palette.highlight_overlay },
        SpecialKey = { fg = palette.foam },
        SpellBad = { gui = 'undercurl', sp = palette.love },
        SpellCap = { gui = 'undercurl', sp = palette.subtle },
        SpellLocal = { gui = 'undercurl', sp = palette.subtle },
        SpellRare = { gui = 'undercurl', sp = palette.subtle },
        SignColumn = { fg = palette.text, bg = maybe_base },
        StatusLine = { fg = palette.text, bg = palette.surface },
        StatusLineNC = { fg = palette.subtle, bg = palette.surface },
        -- StatusLineTerm = {},
        -- StatusLineTermNC = {},
        -- TabLine = {},
        -- TabLineFill = {},
        -- TabLineSel = {},
        Title = { fg = palette.rose },
        VertSplit = { fg = palette.overlay },
        Visual = { bg = palette.highlight },
        -- VisualNOS = {},
        WarningMsg = { fg = palette.gold },
        -- Whitespace = {},
        -- WildMenu = {},

        Boolean = { fg = palette.gold },
        Character = { fg = palette.gold },
        Comment = { fg = palette.inactive, gui = maybe_italic },
        Conditional = { fg = palette.pine },
        Constant = { fg = palette.gold },
        Debug = { fg = palette.rose },
        Define = { fg = palette.iris },
        Delimiter = { fg = palette.rose },
        Error = { fg = palette.love },
        Exception = { fg = palette.pine },
        Float = { fg = palette.gold },
        Function = { fg = palette.rose },
        Identifier = { fg = palette.rose },
        -- Ignore = {},
        Include = { fg = palette.iris },
        Keyword = { fg = palette.pine },
        Label = { fg = palette.foam },
        Macro = { fg = palette.iris },
        Number = { fg = palette.gold },
        Operator = { fg = palette.subtle },
        PreCondit = { fg = palette.iris },
        PreProc = { fg = palette.iris },
        Repeat = { fg = palette.pine },
        Special = { fg = palette.rose },
        SpecialChar = { fg = palette.rose },
        SpecialComment = { fg = palette.iris },
        Statement = { fg = palette.pine },
        StorageClass = { fg = palette.foam },
        String = { fg = palette.gold },
        Structure = { fg = palette.foam },
        Tag = { fg = palette.rose },
        Todo = { fg = palette.iris },
        Type = { fg = palette.foam },
        Typedef = { fg = palette.foam },
        Underlined = { fg = palette.foam, gui = 'underline' },

        htmlArg = { fg = palette.iris },
        htmlEndTag = { fg = palette.subtle },
        htmlLink = { fg = palette.text },
        htmlTag = { fg = palette.subtle },
        htmlTagN = { fg = palette.love },
        htmlTagName = { fg = palette.foam },

        LspDiagnosticsDefaultHint = { fg = palette.iris },
        LspDiagnosticsDefaultInformation = { fg = palette.foam },
        LspDiagnosticsDefaultWarning = { fg = palette.gold },
        LspDiagnosticsDefaultError = { fg = palette.love },

        LspDiagnosticsFloatingHint = { fg = palette.iris },
        LspDiagnosticsFloatingInformation = { fg = palette.foam },
        LspDiagnosticsFloatingWarning = { fg = palette.gold },
        LspDiagnosticsFloatingError = { fg = palette.love },

        LspDiagnosticsSignHint = { fg = palette.iris },
        LspDiagnosticsSignInformation = { fg = palette.foam },
        LspDiagnosticsSignWarning = { fg = palette.gold },
        LspDiagnosticsSignError = { fg = palette.love },

        LspDiagnosticsUnderlineHint = { gui = 'undercurl', sp = palette.iris },
        LspDiagnosticsUnderlineInformation = { gui = 'undercurl', sp = palette.foam },
        LspDiagnosticsUnderlineWarning = { gui = 'undercurl', sp = palette.gold },
        LspDiagnosticsUnderlineError = { gui = 'undercurl', sp = palette.love },

        LspDiagnosticsVirtualTextHint = { fg = palette.iris },
        LspDiagnosticsVirtualTextInformation = { fg = palette.foam },
        LspDiagnosticsVirtualTextWarning = { fg = palette.gold },
        LspDiagnosticsVirtualTextError = { fg = palette.love },

        LspReferenceText = { fg = palette.rose, bg = palette.highlight },
        LspReferenceRead = { fg = palette.rose, bg = palette.highlight },
        LspReferenceWrite = { fg = palette.rose, bg = palette.highlight },
    }

    theme.treesitter = {
        -- TSAnnotation = {},
        -- TSAttribute = {},
        TSBoolean = { fg = palette.rose },
        -- TSCharacter = {},
        TSComment = { fg = palette.subtle, gui = maybe_italic },
        -- TSConditional = {},
        TSConstBuiltin = { fg = palette.love },
        -- TSConstMacro = {},
        TSConstant = { fg = palette.foam },
        TSConstructor = { fg = palette.foam },
        -- TSEmphasis = {},
        -- TSError = {},
        -- TSException = {},
        TSField = { fg = palette.foam },
        -- TSFloat = {},
        TSFuncBuiltin = { fg = palette.love },
        -- TSFuncMacro = {},
        TSFunction = { fg = palette.rose },
        TSInclude = { fg = palette.pine },
        TSKeyword = { fg = palette.pine },
        -- TSKeywordFunction = {},
        TSKeywordOperator = { fg = palette.pine },
        TSLabel = { fg = palette.foam },
        -- TSLiteral = {},
        -- TSMethod = {},
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        TSOperator = { fg = palette.pine },
        TSParameter = { fg = palette.iris, gui = maybe_italic },
        -- TSParameterReference = {},
        TSProperty = { fg = palette.iris, gui = maybe_italic },
        TSPunctBracket = { fg = palette.subtle },
        TSPunctDelimiter = { fg = palette.subtle },
        TSPunctSpecial = { fg = palette.subtle },
        -- TSRepeat = {},
        -- TSStrike = {},
        TSString = { fg = palette.gold },
        TSStringEscape = { fg = palette.pine },
        -- TSStringRegex = {},
        -- TSSymbol = {},
        TSTag = { fg = palette.foam },
        TSTagDelimiter = { fg = palette.subtle },
        TSText = { fg = palette.text },
        -- TSTitle = {},
        -- TSType = {},
        -- TSTypeBuiltin = {},
        TSURI = { fg = palette.gold },
        -- TSUnderline = {},
        TSVariable = { fg = palette.text, gui = maybe_italic },
        TSVariableBuiltin = { fg = palette.love },
    }

    theme.plugins = {
        -- telescope.nvim
        -- https://github.com/nvim-telescope/telescope.nvim
        TelescopeMatching = { fg = palette.rose },
        TelescopeBorder = { fg = palette.subtle },

        -- barbar.nvim
        -- https://github.com/romgrk/barbar.nvim
        BufferTabpageFill = { bg = palette.none },
        BufferCurrent = { fg = palette.text, bg = palette.overlay },
        BufferCurrentIndex = { fg = palette.text, bg = palette.overlay },
        BufferCurrentMod = { fg = palette.foam, bg = palette.overlay },
        BufferCurrentSign = { fg = palette.subtle, bg = palette.overlay },
        BufferInactive = { fg = palette.subtle },
        BufferInactiveIndex = { fg = palette.subtle },
        BufferInactiveMod = { fg = palette.foam },
        BufferInactiveSign = { fg = palette.subtle },
        BufferVisible = { fg = palette.subtle },
        BufferVisibleIndex = { fg = palette.subtle },
        BufferVisibleMod = { fg = palette.foam },
        BufferVisibleSign = { fg = palette.subtle },

        -- gitsigns.nvim
        -- https://github.com/lewis6991/gitsigns.nvim
        SignAdd = { fg = palette.foam },
        SignChange = { fg = palette.rose },
        SignDelete = { fg = palette.love },
        GitSignsAdd = { fg = palette.foam },
        GitSignsChange = { fg = palette.rose },
        GitSignsDelete = { fg = palette.love },

        -- modes.nvim
        -- https://github.com/mvllow/modes.nvim
        ModesCopy = { bg = palette.gold },
        ModesDelete = { bg = palette.love },
        ModesInsert = { bg = palette.foam },
        ModesVisual = { bg = palette.iris },

        -- nvim-tree.lua
        -- https://github.com/kyazdani42/nvim-tree.lua
        NvimTreeNormal = { fg = palette.text },

        NvimTreeFileDeleted = { fg = palette.love },
        NvimTreeFileDirty = { fg = palette.rose },
        NvimTreeFileMerge = { fg = palette.iris },
        NvimTreeFileNew = { fg = palette.foam },
        NvimTreeFileRenamed = { fg = palette.pine },
        NvimTreeFileStaged = { fg = palette.iris },

        NvimTreeEmptyFolderName = { fg = palette.inactive },
        NvimTreeFolderIcon = { fg = palette.rose },
        NvimTreeFolderName = { fg = palette.foam },
        NvimTreeOpenedFile = { fg = palette.text, bg = palette.highlight },
        NvimTreeOpenedFolderName = { fg = palette.foam },
        NvimTreeRootFolder = { fg = palette.subtle },
        NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
        NvimTreeIndentMarker = { fg = palette.inactive },

        NvimTreeGitDeleted = { fg = palette.love },
        NvimTreeGitDirty = { fg = palette.rose },
        NvimTreeGitIgnored = { fg = palette.subtle },
        NvimTreeGitMerge = { fg = palette.iris },
        NvimTreeGitNew = { fg = palette.foam },
        NvimTreeGitRenamed = { fg = palette.pine },
        NvimTreeGitStaged = { fg = palette.iris },

        NvimTreeWindowPicker = { fg = palette.base, bg = palette.iris },

        -- which-key.nvim
        -- https://github.com/folke/which-key.nvim
        WhichKey = { fg = palette.iris },
        WhichKeyGroup = { fg = palette.foam },
        WhichKeySeparator = { fg = palette.subtle },
        WhichKeyDesc = { fg = palette.gold },
        WhichKeyFloat = { bg = palette.surface },
        WhichKeyValue = { fg = palette.rose },

        -- hop.nvim
        -- https://github.com/phaazon/hop.nvim
        HopNextKey = { fg = palette.text },
        HopNextKey1 = { fg = palette.text },
        HopNextKey2 = { fg = palette.foam },
        HopUnmatched = { fg = palette.inactive },

        -- indent-blankline.nvim
        -- https://github.com/lukas-reineke/indent-blankline.nvim
        IndentBlanklineChar = { fg = palette.inactive },
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
    vim.g.terminal_color_2 = palette.pine
    vim.g.terminal_color_10 = palette.pine
    -- yellow
    vim.g.terminal_color_3 = palette.gold
    vim.g.terminal_color_11 = palette.gold
    -- blue
    vim.g.terminal_color_4 = palette.foam
    vim.g.terminal_color_12 = palette.foam
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
