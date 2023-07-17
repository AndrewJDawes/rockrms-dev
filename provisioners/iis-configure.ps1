# Open Internet Information Services (IIS) Manager
Start-Process "inetmgr"

# Wait for IIS Manager to open
Start-Sleep -Seconds 5

# Set Application Pool settings for DefaultAppPool
$defaultAppPoolPath = "IIS:\AppPools\DefaultAppPool"
Set-ItemProperty -Path $defaultAppPoolPath -Name "managedRuntimeVersion" -Value "v4.0"
Set-ItemProperty -Path $defaultAppPoolPath -Name "startMode" -Value "AlwaysRunning"
Set-ItemProperty -Path $defaultAppPoolPath -Name "processModel.identityType" -Value "LocalSystem"
Set-ItemProperty -Path $defaultAppPoolPath -Name "processModel.idleTimeout" -Value ([TimeSpan]::FromMinutes(0))

# Set recycling settings for DefaultAppPool
Set-ItemProperty -Path $defaultAppPoolPath -Name "recycling.periodicRestart.schedule.[value]" -Value "04:00:00"
Set-ItemProperty -Path $defaultAppPoolPath -Name "recycling.periodicRestart.time" -Value ([DateTime]::Now.AddDays(1).ToString("yyyy-MM-ddTHH:mm:ss"))

# Set Preload Enabled setting for Default Web Site
$defaultWebSitePath = "IIS:\Sites\Default Web Site"
Set-ItemProperty -Path $defaultWebSitePath -Name "preloadEnabled" -Value $true

# Restart IIS for the changes to take effect
Restart-Service -Name "W3SVC"

# Wait for IIS to restart
Start-Sleep -Seconds 10