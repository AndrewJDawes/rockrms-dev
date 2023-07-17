# Start the SQL Server installer
Start-Process -FilePath "SQLServerInstaller.exe"  # Replace with the path to your SQL Server installer

# Wait for the SQL Server installer to open
Start-Sleep -Seconds 5

# Click on "New SQL Server stand-alone installation or add features to an existing installation"
# Modify the following coordinates based on your installer UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Accept the license agreement
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Keep the option to include SQL Server product updates
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Wait for the SQL Server installer to prepare
Start-Sleep -Seconds 10

# Use the default feature selection
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Use the default instance configuration
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Use the default server configuration
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Set authentication mode to Mixed Mode and provide a password for SQL Server
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{SPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("your_password")  # Replace "your_password" with the desired password
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Skip the error reporting
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Wait for the SQL Server installation to complete
Start-Sleep -Seconds 600

# Close the SQL Server installer
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")

# Wait for the installer window to close
Start-Sleep -Seconds 5

# Launch the web browser to download SQL Server Management Studio (SSMS)
Start-Process -FilePath "https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms"  # Replace with the URL to download SSMS

# Wait for the web browser to open
Start-Sleep -Seconds 5

# Close the SQL Server Installation Center window
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")
