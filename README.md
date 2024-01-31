# windows-apps

A simple powershell script that installs specific applications using [winget](https://github.com/microsoft/winget-cli) and [chocolatey](https://github.com/chocolatey/choco)

## What gets installed?

* 7-Zip
* Discord
* Eclipse Temurin JRE 8
* Eclipse Temurin JRE 17
* Heroic Games Launcher
* Jellyfin Media Player
* KDE Connect
* Krita
* LibreOffice
* LibreWolf
* Microsoft Visual C++ 2015-2022 Redistributable (x64)
* Moonlight
* Mozilla Thunderbird
* Mp3tag
* NVCleanstall
* OBS Studio
* osu!
* Parsec (shared install)
* Prism Launcher
* PS Remote Play
* ShareX
* Shotcut
* Spotify
* Steam
* Sunshine
* TegraRcmGUI
* TeraCopy
* TETR.IO
* WinSCP
* Yubico Authenticator

## How to use

Run the following in an elevated powershell window:

```powershell
irm hndres.com/get | iex
```

`hndres.com/get` redirects to [get.ps1](https://github.com/andresda25/windows-apps/blob/main/get.ps1).

It should auto-install winget. If it fails for some reason, manually install it [here](https://apps.microsoft.com/detail/app-installer/9NBLGGH4NNS1).



