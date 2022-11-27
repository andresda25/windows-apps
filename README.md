# windows-apps

A simple powershell script that installs `winget` and `chocolatey`, then installs the Windows programs/games that I use.

## What gets installed?

* 7-Zip
* Brave
* Cider
* Discord
* Eclipse Temurin JRE with Hotspot 17
* Element
* Google Chrome
* Iriun Webcam
* Minecraft Launcher
* Mozilla Firefox
* NTLite
* OBS Studio
* ~~osu!~~ not yet
* Parsec
* Powertoys
* ShareX
* ~~Spotify~~ seems to be broken on chocolatey
* Steam
* TETR.IO
* VALORANT
* VMWare Workstation Pro
* WinSCP

## How to use

If you somehow use the same exact programs as me, then in an elevated powershell window, run:

```powershell
irm hndres.com/get | iex
```

## Why split it into two scripts?

When you install `winget` you get prompted to reboot, but you can simply open a new powershell window to use it. I opted for the latter.

