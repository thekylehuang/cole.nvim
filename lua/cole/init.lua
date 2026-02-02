local M = {}

local colors = {
    bg = "#0c0c0c",
    fg = "#f2e6cf",
    selection = "#3d3d3d",
    grey = "#858585",

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
       Normal = { fg = colors.fg, bg = colors.bg},
        NormalFloat = { fg = colors.fg, bg = colors.bg },
        Cursor = { fg = colors.bg, bg = colors.fg },
        Visual = { bg = colors.selection },
        LineNr = { fg = colors.bright_black },
        StatusLine = { fg = colors.fg, bg = colors.black },

        Comment = { fg = colors.grey, italic = true },
        Constant = { fg = colors.magenta },
        Directory = { fg = colors.fg },
        Delimiter = { fg = colors.fg },
        String = { fg = colors.green },
        Character = { fg = colors.green },
        Number = { fg = colors.magenta },
        Boolean = { fg = colors.magenta },
        Float = { fg = colors.magenta },
        Function = { fg = colors.yellow },

        Identifier = { fg = colors.red },
        Statement = { fg = colors.magenta },
        Conditional = { fg = colors.magenta },
        Repeat = { fg = colors.magenta },
        Label = { fg = colors.yellow },
        Operator = { fg = colors.magenta },
        Keyword = { fg = colors.magenta },
        Exception = { fg = colors.red },
        PreProc = { fg = colors.cyan },
        Type = { fg = colors.blue },
        Structure = { fg = colors.cyan },
        Special = { fg = colors.blue },
        Error = { fg = colors.red },
        Todo = { fg = colors.bg, bg = colors.yellow, bold = true },
        Variable = { fg = colors.green },

        htmlTag = { fg = colors.grey },
        htmlTagName = { fg = colors.yellow },
        typescriptImport = { fg = colors.yellow },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.blue },
        DiagnosticHint = { fg = colors.cyan },
    }

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
