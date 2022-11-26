# Allow powershell scripts from anywhere
Set-ExecutionPolicy unrestricted -Force

# Chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Winget install
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Script -Name winget-install -Force
winget-install.ps1

# Get apps.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/andresda25/windows-apps/main/apps.ps1 -Outfile $env:TMP\apps.ps1

# Run apps.ps1 in an elevated shell then exit
Start-Process PowerShell -Verb runAs -ArgumentList "-file $env:TMP\apps.ps1"
exit

