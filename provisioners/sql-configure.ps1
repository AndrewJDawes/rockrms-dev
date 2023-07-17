# Open SQL Server Management Studio (SSMS)
Start-Process -FilePath "ssms.exe"  # Replace with the path to your SSMS executable

# Wait for SSMS to open
Start-Sleep -Seconds 5

# Change authentication to SQL Server Authentication and log in using the "sa" account and the password created during installation
# Modify the following coordinates based on your SSMS UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Expand the Security folder and right-click on Logins, then click on New Login
# Modify the following coordinates based on your SSMS UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Fill in the login details for the RockUser account (or your preferred username)
# Modify the following coordinates based on your SSMS UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("RockUser")  # Replace "RockUser" with the desired username
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("your_password")  # Replace "your_password" with the desired password
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{SPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Check the "dbcreator" role for the RockUser account
# Modify the following coordinates based on your SSMS UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{SPACE}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Open SQL Server Configuration Manager
Start-Process -FilePath "SQLServerManagerXX.msc"  # Replace with the path to your SQL Server Configuration Manager
# Modify the "XX" in the filename based on your version of SQL Server

# Wait for SQL Server Configuration Manager to open
Start-Sleep -Seconds 5

# Enable TCP/IP protocol
# Modify the following coordinates based on your SQL Server Configuration Manager UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Open the properties of the SQL Server Agent service
# Modify the following coordinates based on your SQL Server Configuration Manager UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Set the start mode to Automatic and restart the SQL Server service
# Modify the following coordinates based on your SQL Server Configuration Manager UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Open Firewall with Advanced Security
Start-Process -FilePath "wf.msc"

# Wait for Firewall with Advanced Security to open
Start-Sleep -Seconds 5

# Create a new inbound rule for port 1433
# Modify the following coordinates based on your Firewall with Advanced Security UI
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Define the rule by port
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Specify TCP and port 1433
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("TCP")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("1433")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Allow the connection
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Choose the firewall profiles to apply the rule to
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5

# Provide a name for the rule and finish
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(X_coordinate, Y_coordinate)  # Replace X_coordinate and Y_coordinate with the appropriate values
[System.Windows.Forms.SendKeys]::SendWait("SQL Server Port 1433")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5
