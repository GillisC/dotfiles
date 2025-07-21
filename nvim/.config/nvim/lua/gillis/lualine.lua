require("lualine").setup {
    options = {
        theme = {
            normal = {
                a = { fg = '#000000', bg = '##009AA2', gui = 'bold' },
                b = { fg = '#ffffff', bg = '#2c2c2c' },
                c = { fg = '#bbbbbb', bg = '#1e1e1e' },
            },
            insert = {
                a = { fg = '#000000', bg = '#f1823b', gui = 'bold' },
            },
            visual = {
                a = { fg = '#000000', bg = '#f294fb', gui = 'bold' },
            },
            replace = {
                a = { fg = '#000000', bg = '#e06c75', gui = 'bold' },
            },
            inactive = {
                a = { fg = '#999999', bg = '#1e1e1e', gui = 'bold' },
                b = { fg = '#999999', bg = '#1e1e1e' },
                c = { fg = '#999999', bg = '#1e1e1e' },
            },        },
            icons_enabled = true,
            section_separators = '',
            component_separators = '',
            globalstatus = true,
        },
        sections = {
            lualine_a = { { 'mode', icon = '' } },
            lualine_b = { 'branch', 'diff' },
            lualine_c = { { 'filename', path = 1 } },
            lualine_x = { 'encoding', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    }

