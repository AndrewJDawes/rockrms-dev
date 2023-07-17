# Install the Web Server role and features
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature

# Install required features for IIS
Install-WindowsFeature -Name NET-Framework-45-ASPNET, Web-Asp-Net45, Web-WebSockets, Web-Net-Ext45, Web-AppInit

# Restart the server if required
Restart-Computer -Force