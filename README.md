# windows-apps

A simple powershell script that installs `winget` and `chocolatey`, then installs the Windows programs/games that I use.

## How to use

In an elevated powershell window, run:

`irm https://hndres.com/get | iex`

## Why split it into two scripts?

When you install `winget` you get prompted to reboot, but you can simply open a new powershell window to use it. I opted for the latter.
