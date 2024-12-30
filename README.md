## For Use This Configuration on `Linux or Mac OS` :
  
### 1_ Install nvim with this command :
Debian / Ubuntu : 
    `sudo apt install nvim`

                         
                        
Install with snap for all Linux distros : `sudo snap install nvim --classic`

                        
                        
Install with brew for Mac OS or Linux : `brew install neovim`

                        
                        
Install with Flathub for Linux distros: `flatpak install flathub io.neovim.nvim`


### 2_ Just Copy this Repo into : `~/.config/nvim`

### 3_ Update all Plugins in nvim : `:PackerSync`

for more Help, you can see this Tree map : 

.
├── after
│   └── plugin
│       ├── autopairs.rc.lua
│       ├── bufferline.rc.lua
│       ├── cmp.rc.lua
│       ├── colorizer.rc.lua
│       ├── lspkind.rc.lua
│       ├── lualine.rc.lua
│       ├── neosolarized.rc.lua
│       ├── null-ls.rc.lua
│       ├── prettier.rc.lua
│       ├── telescope.rc.lua
│       ├── treesitter.rc.lua
│       └── ts-autotag.rc.lua
├── init.lua
├── lua
│   ├── base.lua
│   ├── highlights.lua
│   ├── maps.lua
│   └── plugins.lua
└── plugin
    ├── lspconfig.rc.lua
    ├── lspsage.rc.lua
    ├── packer_compiled.lua
    └── web-devicons.rc.lua
