Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi' -OutFile $P; Start-Process -FilePath msiexec -Args "/i $P /quiet" -Wait; Remove-Item $P}
