# Allow powershell scripts from anywhere
Set-ExecutionPolicy unrestricted -Force

# Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Winget install
if (!(Get-Command "winget" -ErrorAction SilentlyContinue)) {
Write-Host "Winget not found, installing now..."
# Install winget
$path = $env:temp + "\winget.msixbundle"
$headers = @{Accept = 'application/vnd.github+json'}
$repo = 'microsoft/winget-cli'
$apiUrl = "https://api.github.com/repos/$repo/releases/latest"
$latestRelease = (Invoke-WebRequest -Uri $apiUrl -Headers $headers).Content | ConvertFrom-Json
$latestVersion = $latestRelease.tag_name
Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/$latestVersion/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile $path
Write-Host "Winget package downloaded, installing now..."
Add-AppxPackage -Path "$path"
Write-Host "Winget installed successfully"
} else {
Write-Host "Winget is already installed"
}

# Get apps.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/andresda25/windows-apps/main/apps.ps1 -Outfile $env:TMP\apps.ps1

# Run apps.ps1 in an elevated shell then exit
Start-Process PowerShell -Verb runAs -ArgumentList "-file $env:TMP\apps.ps1"
exit

