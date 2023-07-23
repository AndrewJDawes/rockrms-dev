# https://octopus.com/blog/sql-server-powershell
# Fill in the values defined here:

$server = "WIN-ROCKSQLSERV"
$new_user_username = "RockUser"
$new_user_password = "RockUser"
$connectionString = "Server=$server;Integrated Security=true;Initial Catalog=master"

# We will now import the SQL Server Module.
Import-Module "SqlServer"

# Set up initial connection
try
{
    # This is a simple user/pass connection string.
    # Feel free to substitute "Integrated Security=True" for system logins.
    # $connectionString = "Data Source=YourInstance;Database=YourDB;User ID=YourUser;Password=YourPassword"

    #Create a SQL connection object
    $conn = New-Object System.Data.SqlClient.SqlConnection $connectionString

    #Attempt to open the connection
    $conn.Open()
    if($conn.State -eq "Open")
    {
        # We have a successful connection here
        # Notify of successful connection
        Write-Host "Test connection successful!"
        $conn.Close()
    }
    # We could not connect here
    # Notify connection was not in the "open" state
}
catch
{
    # We could not connect here
    # Notify there was an error connecting to the database
    echo "Unable to connect to SQL Server!"
}


# To run in a non-interactive mode, such as through an Octopus deployment, you will most likely need to pass the new login credentials as a PSCredential object.
$pass = ConvertTo-SecureString $new_user_password -AsPlainText -Force

# Create the PSCredential object
$loginCred = New-Object System.Management.Automation.PSCredential($new_user_username, $pass)

# Create login using the Add-SqlLogin cmdlet
Add-SqlLogin -ServerInstance $server -LoginPSCredential $loginCred -LoginType SqlLogin -GrantConnectSql -Enable
