# Allow powershell scripts from anywhere
Set-ExecutionPolicy unrestricted -Force

# Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Winget install
$repoUrl = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
$latestRelease = Invoke-WebRequest -Uri $repoUrl -UseBasicParsing | ConvertFrom-Json
$downloadUrl = $latestRelease.assets | Where-Object { $_.name -eq "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" } | Select-Object -ExpandProperty browser_download_url
$downloadPath = "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
Invoke-WebRequest -Uri $downloadUrl -OutFile $downloadPath
Add-AppxPackage -Path $downloadPath

# Get apps.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/andresda25/windows-apps/main/apps.ps1 -Outfile $env:TMP\apps.ps1

# Run apps.ps1 in an elevated shell then exit
Start-Process PowerShell -Verb runAs -ArgumentList "-file $env:TMP\apps.ps1"
exit

