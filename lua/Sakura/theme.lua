local palette = require('Sakura.palette')
local defs = require('Sakura.defs')
local u = require('Sakura.utils')
local o = vim.o

local S = {
    -- Name of the theme
    name = 'sakura',
    config = {
        -- Variant of the theme: moon [dark] | dawn [light]
        variant = o.background == 'dark' and 'moon' or 'dawn',
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
    vim.g.colors_name = S.name
    o.termguicolors = true

    local cfg = S.config

    -- If the user sets `dawn` variant and doesn't have a light background then change it
    if o.background ~= 'light' and cfg.variant == 'dawn' then
        o.background = 'light'
    end

    local plt = palette.get(cfg.variant)

    local theme = defs.groups(plt, cfg)

    for group, colors in pairs(theme.base) do
        u.hi(group, colors)
    end

    for group, colors in pairs(theme.treesitter) do
        u.hi(group, colors)
    end

    for group, colors in pairs(theme.plugins) do
        u.hi(group, colors)
    end

    defs.load_terminal(plt)

    return plt
end

function S.load()
    vim.api.nvim_command('colorscheme ' .. S.name)
end

return S
