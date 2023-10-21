# windows-apps

A simple powershell script that installs specific applications using winget and [chocolatey](https://chocolatey.org/)

## What gets installed?

* Discord
* Eclipse Temurin JRE 17
* Iriun Webcam
* Java 8
* Jellyfin Media Player
* LibreOffice
* Moonlight
* Mozilla Thunderbird
* NVCleanstall
* OBS Studio
* Parsec
* Prism Launcher
* ShareX
* Shotcut
* Steam
* Sunshine
* TegraRcmGUI
* TeraCopy
* TETR.IO
* Thorium
* WinSCP
* Yubico Authenticator

## How to use

First install [App Installer](https://apps.microsoft.com/detail/app-installer/9NBLGGH4NNS1) from the Microsoft Store, then run the following in an elevated powershell window:

```powershell
irm hndres.com/get | iex
```

`hndres.com/get` is a 301 redirect to `https://raw.githubusercontent.com/andresda25/windows-apps/main/get.ps1`.