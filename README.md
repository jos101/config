# config
apps configurations

# Neovim

plugins en windows

```
# winget
AppData\Local\nvim\lua\custom\plugins.lua
```

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


changes in the original file ( `diff.exe -U 5 .\vifmrc-original .\vifmrc`)

```
--- ".\\vifmrc-original"        1900-01-00 00:00:00 +0000
+++ ".\\vifmrc" 1900-01-00 00:00:00 +0000
@@ -176,11 +176,13 @@
 "
 " You can also add %CLEAR if you want to clear screen before running FUSE
 " program.  There is also %FOREGROUND, which is useful for entering passwords.

 " Pdf
-filextype {*.pdf},<application/pdf> zathura %c %i &, apvlv %c, xpdf %c
+filextype {*.pdf},<application/pdf> izathura %c %i &, apvlv %c, xpdf %c,
+        \ {Foxit Reader}
+        \ "C:/Program Files (x86)/Foxit Software/Foxit Reader/FoxitReader.exe" %"c,
 fileviewer {*.pdf},<application/pdf> pdftotext -nopgbrk %c -

 " PostScript
 filextype {*.ps,*.eps,*.ps.gz},<application/postscript>
         \ {View in zathura}
@@ -211,10 +213,12 @@
 " Video
 filextype {*.avi,*.mp4,*.wmv,*.dat,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,
           \*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v,*.r[am],*.qt,*.divx,
           \*.as[fx]},
          \<video/*>
+        \ {View using mpv}
+        \ mpv %"f,
         \ {View using ffplay}
         \ ffplay -fs -hide_banner -autoexit %f,
         \ {View using Dragon}
         \ dragon %f:p,
         \ {View using mplayer}
@@ -242,10 +246,12 @@
 filetype {*.[1-8]},<text/troff> man ./%c
 fileviewer {*.[1-8]},<text/troff> man ./%c | col -b

 " Images
 filextype {*.bmp,*.jpg,*.jpeg,*.png,*.gif,*.xpm},<image/*>
+        \ {IrfanView}
+        \ "C:\Program Files\IrfanView\i_view64.exe" "%f,
         \ {View in sxiv}
         \ sxiv %f,
         \ {View in gpicview}
         \ gpicview %c,
         \ {View in shotwell}
@@ -400,11 +406,11 @@

 " Customize view columns a bit (enable ellipsis for truncated file names)
 " set viewcolumns=-{name}..,6{}.

 " Show vertical border
-" set fillchars=vborder:ï¿½..
+" set fillchars=vborder:ƒ..

 " Filter-out build and temporary files
 " filter! {*.lo,*.o,*.d,*.class,*.pyc,*.pyo,.*~}

 " ------------------------------------------------------------------------------
```

**Note:** Do not modify this vifmrc. It holds a copy from `~\scoop\apps\vifm\<vifm-version>\data\vifmrc`.

    ~\AppData\Roaming\Vifm\vifmrc   

