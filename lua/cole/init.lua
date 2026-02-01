local M = {}

local colors = {
    bg = "#0c0c0c",
    fg = "#f2e6cf",
    selection = "#3d3d3d",
    comment = "#a5a5a5",

    black   = "#101010",
    red     = "#cc5d4b",
    green   = "#2e9969",
    yellow  = "#b38d59",
    blue    = "#6179c2",
    magenta = "#ab78ab",
    cyan    = "#33919c",
    white   = "#a5a5a5",

    bright_black   = "#3d3d3d",
    bright_red     = "#d96857",
    bright_green   = "#66cc69",
    bright_yellow  = "#cc9b52",
    bright_blue    = "#5582c2",
    bright_magenta = "#bf86bf",
    bright_cyan    = "#73bfbf",
    bright_white   = "#cdcdcd",
}

function M.setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "cole"

    local groups = {
        Normal       = { fg = colors.fg, bg = colors.bg },
        NormalFloat  = { fg = colors.fg, bg = colors.bg },
        Cursor       = { fg = colors.bg, bg = colors.fg },
        CursorLine   = { bg = colors.selection },
        Visual       = { bg = colors.selection },
        LineNr       = { fg = colors.bright_black },
        CursorLineNr = { fg = colors.yellow },
        StatusLine   = { fg = colors.fg, bg = colors.bright_black },

        Comment      = { fg = colors.comment, italic = true },
        Constant     = { fg = colors.cyan },
        String       = { fg = colors.green },
        Character    = { fg = colors.green },
        Number       = { fg = colors.magenta },
        Boolean      = { fg = colors.magenta },
        Float        = { fg = colors.magenta },
        Identifier   = { fg = colors.red },
        Function     = { fg = colors.blue },
        Statement    = { fg = colors.yellow },
        Conditional  = { fg = colors.yellow },
        Repeat       = { fg = colors.yellow },
        Label        = { fg = colors.yellow },
        Operator     = { fg = colors.fg },
        Keyword      = { fg = colors.yellow },
        Exception    = { fg = colors.red },
        PreProc      = { fg = colors.bright_blue },
        Type         = { fg = colors.bright_yellow },
        Structure    = { fg = colors.bright_yellow },
        Special      = { fg = colors.bright_cyan },
        Error        = { fg = colors.red },
        Todo         = { fg = colors.bg, bg = colors.yellow, bold = true },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.yellow },
        DiagnosticInfo  = { fg = colors.blue },
        DiagnosticHint  = { fg = colors.cyan },
    }

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
