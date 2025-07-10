# Installing `packer.nvim`

To set up `packer.nvim` as your plugin manager for Neovim, follow these steps:

## Clone `packer.nvim`

Run the following command to clone `packer.nvim` into the appropriate directory:

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Navigate to the packer file and :so -> :PackerSync to download plugins.

Exit and enter neovim to setup the rest.

## So i dont forget
Add plugins by modifying the `packer.lua` file. Configs for a plugin is added in the same folder and add the `require` to the `lua/gillis/init.lua`

# Todo
- Keybindings to navigate up/down in telescope menu Ctrl + j/k?
- Binding for hovering over a function definintion and jumping to declaration?
- Keybind to jump between header and source file like a toggle
- Make telescope ignore files that are ignored by gitignore file


