# Winget is needed for this script to work
# Run as admin or disable UAC to run unattended 

# (WIP) Create the path + variable containing the path of where the binaries will be downloaded when unable to use winget
#New-Item -Path "$env:USERPROFILE\Downloads\Downloaded-Binaries" -ItemType Directory
#$thepath = "$env:USERPROFILE\Downloads\Downloaded-Binaries"

# 7-zip
winget install 7zip.7zip -h

# Brave
winget install brave.brave -h

# Cider
winget install cidercollective.cider -h

# Discord
winget install discord.discord -h

# Eclipse Temurin JDK with Hotspot
winget install eclipseadoptium.temurin.17.jre

# Element
winget install element.element -h

# Google Chrome
winget install google.chrome -h

# Minecraft Launcher
winget install mojang.minecraftlauncher -h

# Mozilla Firefox
winget install mozilla.firefox -h

# NTLite
winget install nlitesoft.ntlite -h

# OBS Studio
winget install obsproject.obsstudio -h

# osu! (WIP)
# winget doesn't install osu!stable but rather osu!lazer
# Not unattended
#iwr -uri https://m1.ppy.sh/r/osu!install.exe -outfile $thepath\osu!install.exe
#start-process -wait -filepath $thepath\osu!install.exe -passthru
start https://osu.ppy.sh/home/download

# Parsec
winget install parsec.parsec -h

# Powertoys
winget install microsoft.powertoys -h

# ShareX
winget install sharex.sharex -h

# Spotify
# The installer fails to run as administrator for some reason, so this needs to be run as a default user
# On default Windows installations, you need to have a password set for runas to work and it's not unattended due to this
runas /user:$env:USERNAME "winget install spotify.spotify -h"

# Steam
winget install valve.steam -h

# TETR.IO
winget install osk.tetr -h

# VALORANT
winget install riotgames.valorant.na -h

# VMWare Workstation Pro
winget install vmware.workstationpro -h

# WinSCP
winget install winscp.winscp -h
