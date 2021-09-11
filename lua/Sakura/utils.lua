local cmd = vim.api.nvim_command
local M = {}

function M.hi(group, styles)
    local gui = styles.gui or 'NONE'
    local sp = styles.sp or 'NONE'
    local fg = styles.fg or 'NONE'
    local bg = styles.bg or 'NONE'

    cmd('highlight! ' .. group .. ' gui=' .. gui .. ' guisp=' .. sp .. ' guifg=' .. fg .. ' guibg=' .. bg)

    if styles.link then
        cmd('highlight! link ' .. group .. ' ' .. styles.link)
    end
end

return M
