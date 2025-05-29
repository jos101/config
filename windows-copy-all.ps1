$dir = $pwd 
Write-host $dir

Write-host "copiando lazyvim"
cd config/windows/lazyvim 
cp -Recursive -Force appdata ~/

Write-host "copiando .wezterm.lua"
cd $dir/config/windows/profile
cp .wezterm.lua ~/ 

Write-host "copiando profile powershell"
if ( !(Test-Path $profile) ){
  New-Item -Path $profile -ItemType File -Force
} 
cp $dir/powershell/Microsoft.PowerShell_profile.ps1 ~/documents/powershell/


cd $dir

