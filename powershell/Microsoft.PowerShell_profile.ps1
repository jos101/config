#Oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\nu4a.omp.json" | Invoke-Expression
#Oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\night-owl.omp.json" | Invoke-Expression
Invoke-Expression (&starship init powershell)

Set-PSReadLineOption -PredictionSource History

# For zoxide v0.8.0+
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
