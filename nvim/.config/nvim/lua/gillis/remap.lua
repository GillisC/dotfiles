-- Here is where most of the remaps
--
-- Notes so i can remember:
-- noremap: Non-recursive mapping, prevents the mapping to expand recursively
-- silent: Shows the mapped command in command line area

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Allows moving a selection around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>t", "<Cmd>rightbelow vsplit | terminal<CR> | i", { noremap = true, silent = true })

-- nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- oil.nvim
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Open Oil", noremap = true, silent = true })

-- LSP bindings
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>")
vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>")

-- Makes it possible to toggle between header <==> source files
vim.keymap.set("n", "<leader>gh", function()
  vim.lsp.buf_request(0, 'textDocument/switchSourceHeader', {
    uri = vim.uri_from_bufnr(0)
  }, function(err, result)
    if result then
      vim.cmd('edit ' .. vim.uri_to_fname(result))
    else
      print("No alternate file found")
    end
  end)
end, { desc = "Switch between header/source" })

-- Custom commands
vim.api.nvim_create_user_command("Config", function()
    vim.cmd("vsplit Oil ~/.config/nvim")
end, { desc = "Open Neovim config directory in Oil"})
