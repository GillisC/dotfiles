-- base16 themes i like
-- base16-0x96f
-- forest (nice background)
-- ayu-dark & ayu-mirage 1
-- base16-black-metal-bathory
-- brewer
-- chalk
-- circus
-- classic dark or default dark
-- da one gray
-- darktooth
-- equilibrium dark or gray

function ColorMyPencils(color)
    color = color or "infernape"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
