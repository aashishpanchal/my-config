# oh-my-posh, https://github.com/jandedobbeleer/oh-my-posh
oh-my-posh init pwsh --config '~\scoop\apps\oh-my-posh\current\themes\catppuccin_latte.omp.json' | Invoke-Expression

# alias
Set-Alias g git # git
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# ps-read-line, https://github.com/PowerShell/PSReadLine
Set-PSReadLineOption -EditMode emacs # windows | emacs | vi
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# utile function
function ls {eza -l --icons $args} # check-out https://github.com/eza-community/eza
function whereis ($command) {(Get-Command -Name $command -ErrorAction SilentlyContinue).Path}
