local sakura = require('Sakura.theme')

local S = {}

---Configure the theme and palette
S.setup = sakura.setup

---Load the theme
function S.bloom()
    -- bloom() returns the currently used color palette which we can expose to the users
    local palette = sakura.bloom()

    -- To be used outside e.g lualine
    S.Palette = palette
end

return S
