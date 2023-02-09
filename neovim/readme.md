# neovim

ubicacion en windows. Copiar allí el init.vim

    ~/AppData/Local/nvim

# instalar plugins 

instalar vimplug y ejecutar `:PlugInstall` en neovim.

# Instalar vim-plg

para windows ejecutar en powershell (https://github.com/junegunn/vim-plug)

    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force


