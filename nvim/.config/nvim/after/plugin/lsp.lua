require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {
		"lua_ls",
		"ruff",
		"clangd",
		"pyright",
	}
}

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}
require("lspconfig").ruff.setup {}
require("lspconfig").clangd.setup {
    cmd = { "clangd", "--compile-commands-dir=build" }
}
require("lspconfig").pyright.setup {}


local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = cmp.mapping.preset.insert({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
  mapping = cmp_mappings,
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)  -- Ensure snippet expansion works if using LuaSnip
    end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' }
  },
})
