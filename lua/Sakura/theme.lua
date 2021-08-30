local palette = require('Sakura.palette')
local highlights = require('Sakura.highlights')
local o = vim.o

local sakura = {}

function sakura:new()
    local state = {
        -- Name of the theme
        name = 'sakura',
        config = {
            -- Variant of the theme: rose (default [dark]) | moon [dim] | dawn [light]
            variant = o.background == 'dark' and 'rose' or 'dawn',
            -- Transparent background
            transparent = false,
            -- Use italics
            italics = true,
        },
    }

    self.__index = self
    return setmetatable(state, self)
end

function sakura:setup(cfg)
    if cfg ~= nil then
        self.config = vim.tbl_extend('keep', self.config, cfg)
    end

    return self
end

function sakura:bloom()
    vim.g.colors_name = self.name
    o.termguicolors = true

    local cfg = self.config

    -- If the user sets `dawn` variant and doesn't have a light background then change it
    if o.background ~= 'light' and cfg.variant == 'dawn' then
        o.background = 'light'
    end

    local plt = palette.get(cfg.variant)

    local theme = highlights.groups(plt, cfg)

    for group, colors in pairs(theme.base) do
        highlights.hi(group, colors)
    end

    for group, colors in pairs(theme.treesitter) do
        highlights.hi(group, colors)
    end

    for group, colors in pairs(theme.plugins) do
        highlights.hi(group, colors)
    end

    highlights.load_terminal(plt)

    return plt
end

return sakura:new()
