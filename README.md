# windows-apps

A simple powershell script that installs [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) and [chocolatey](https://chocolatey.org/), then installs the Windows programs/games that I use.

## What gets installed?

* Brave Browser
* Discord
* Eclipse Temurin JRE 17
* Iriun Webcam
* Java 8
* Moonlight
* Mozilla Thunderbird
* NanaZip
* NTLite
* NVCleanstall
* OBS Studio
* OpenVPN Connect
* Parsec
* Prism Launcher
* ShareX
* Shotcut
* Steam
* Sunshine
* TegraRcmGUI
* TeraCopy
* TETR.IO
* WinSCP
* Yubico Authenticator

## How to use

If you somehow use the same exact programs as me, then in an elevated powershell window, run:

```powershell
irm hndres.com/get | iex
```

## Why split it into two scripts?

When you install `winget` you get prompted to reboot, but you can simply open a new powershell window to use it. I opted for the latter.

