local sakura = require('Sakura.theme')

local S = {}

---Configure the theme and palette
S.setup = sakura.setup

---Bootstrap the colorscheme
function S.bloom()
    -- bloom() returns the currently used color palette which we can expose to the users
    local palette = sakura.bloom()

    -- To be used outside e.g lualine
    S.Palette = palette
end

---Load the colorscheme
S.load = sakura.load

return S
