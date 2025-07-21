# Setup
After cloning this config you will have to setup 'packer' which manages plugins.
## Clone `packer.nvim`
Run the following command to clone `packer.nvim` into the appropriate directory:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Navigate to the packer file and :so -> :PackerSync to download plugins.

## External dependencies
Some plugins depend on external dependencies, these are:
- zip (or any unzip tool)
- node and npm

# Usage
Add plugins by modifying the `packer.lua` file. Configuration for a plugin should be placed
inside a separate lua file in the same directory which is then required inside of `init/gillis/init.lua`

# Todo
- make surround not add the whitespace
- harpoon? 
- expand selection using treesitter
