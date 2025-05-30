$dir = $pwd 
Write-host $dir

Write-host "copiando lazyvim"
cd config/windows/lazyvim 
cp -Recurse -Force appdata ~/

Write-host "copiando .wezterm.lua"
cd $dir/config/windows/profile
cp .wezterm.lua ~/ 

Write-host "copiando profile powershell"
if ( !(Test-Path $profile) ){
  New-Item -Path $profile -ItemType File -Force
} 

if ($PSVersionTable.PSVersion.Major -gt 6){
  cp $dir/powershell/Microsoft.PowerShell_profile.ps1 ~/documents/powershell/
}else{
  Write-Host "Se necesita la version 7 de powershell" -ForegroundColor red
}

cd $dir

