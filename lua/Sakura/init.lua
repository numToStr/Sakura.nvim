local S = {}

---Configure the theme and palette
function S.setup(...)
    require('Sakura.theme').setup(...)
end

---Bootstrap the colorscheme
---@private
function S.bloom()
    -- NOTE: bloom() returns the currently used color palette which we can expose to the users for outside usage e.g lualine
    S.Palette = require('Sakura.theme').bloom()
end

---Load the colorscheme
function S.load()
    require('Sakura.theme').load()
end

return S
