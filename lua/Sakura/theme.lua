local S = {
    -- Name of the theme
    name = 'sakura',
    config = {
        -- Variant of the theme: moon [dark] | dawn [light]
        variant = vim.o.background == 'dark' and 'moon' or 'dawn',
        -- Transparent background
        transparent = false,
        -- Use italics
        italics = true,
    },
}

function S.setup(cfg)
    if cfg ~= nil then
        S.config = vim.tbl_extend('force', S.config, cfg)
    end

    return S
end

function S.bloom()
    local palette = require('Sakura.palette')
    local defs = require('Sakura.defs')

    vim.g.colors_name = S.name
    vim.o.termguicolors = true

    -- If the user sets `dawn` variant and doesn't have a light background then change it
    if S.config.variant == 'dawn' then
        vim.o.background = 'light'
    end

    local colors = palette.get(S.config.variant)

    local hi_groups = defs.groups(colors, S.config)

    for group, spec in pairs(hi_groups) do
        vim.api.nvim_set_hl(0, group, spec)
    end

    defs.load_terminal(colors)

    return colors
end

function S.load()
    vim.api.nvim_cmd({ cmd = 'colorscheme', args = { S.name } }, {})
end

return S
