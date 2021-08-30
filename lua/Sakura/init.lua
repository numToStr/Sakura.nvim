local sakura = require('Sakura.theme')

local m = {}

---Configure the theme and palette
function m.setup(...)
    sakura:setup(...)
end

---Load the theme
function m.bloom()
    -- bloom() returns the currently used color palette which we can expose to the users
    local palette = sakura:bloom()

    -- To be used outside e.g lualine
    m.palette = palette
end

return m
