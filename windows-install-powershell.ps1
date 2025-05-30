$URL = 'https://github.com/PowerShell/PowerShell/releases/download/v7.5.1/PowerShell-7.5.1-win-x64.zip'
$PATH = Join-Path -Path $home -ChildPath "opt"
$PATHPWS = Join-Path -Path $PATH -ChildPath "PowerShell"
$pathActual = [System.Environment]::GetEnvironmentVariable('path', 'user').TrimEnd(";", " ")

if ( !(test-path $PATH) ) {
    Write-Host "Creando ruta $PATH"
    md $PATH > $null
}


Write-Host "Descargando PowerShell.zip..."
# Invoke-WebRequest -URI $URL -OutFile PowerShell.zip
Write-Host "Escribiendo en PowerShell.zip..."

Write-Host "Expandiendo PowerShell.zip en $PATHPWS ..."
Expand-Archive -Force .\PowerShell.zip "$PATHPWS"

Write-Host "Agregando variable de entorno ..."

if( $pathActual -notlike "*$PATHPWS*" ) {
  if ($pathActual -eq ""){
    $nuevoPath = $PATHPWS;
  }else{
    $nuevoPath = $pathActual + ";" + $PATHPWS
  }
  [System.Environment]::SetEnvironmentVariable('path', $nuevoPath, 'user')
}
