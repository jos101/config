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
For <vifm-version> is the version of the vifm. 
Config file in  

    ~\scoop\apps\vifm\<vifm-version>\data\vifmrc


changes in the original file ( `diff.exe .\vifmrc-original .\vifmrc`)
```
< filextype {*.pdf},<application/pdf> zathura %c %i &, apvlv %c, xpdf %c
---
> filextype {*.pdf},<application/pdf> zathura %c %i &, apvlv %c, xpdf %c,
>     \ {Foxit Reader}
>     \ "C:/Program Files (x86)/Foxit Software/Foxit Reader/FoxitReader.exe" %"c,
215a218,219
>         \ {View using mpv}
>         \ mpv %"f,

```

**Note:** Do not modify this vifmrc. It holds a copy from `~\scoop\apps\vifm\<vifm-version>\data\vifmrc`

    ~\AppData\Roaming\Vifm\vifmrc   

