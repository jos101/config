# config
apps configurations

# PowerShell
## Install Autocomplete (prediction)
   Install-Module PSReadLine -Force

## Instalar Microsoft PowerShell
    winget install --id Microsoft.Powershell --source winget

add in $PROFILE
    
    Set-PSReadLineOption -PredictionSource History

# Alacratty
create config file in

    $env:APPDATA\alacratty\alacratty.yml

default file in 

    ~\scoop\apps\alacritty\0.11.0\alacritty.yml

# Vifm
config file in 

   ~\scoop\apps\vifm\0.12\data\vifmrc

