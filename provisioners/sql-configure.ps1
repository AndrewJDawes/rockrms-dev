# Replace these variables with your SQL Server instance and database information
$SqlServerInstance = "YourServerName\YourInstanceName"
$Database = "YourDatabaseName"
$SqlUsername = "sa"
$SqlPassword = "RPSsql12345"

# Replace this with your T-SQL statement
$TSqlQuery = "SELECT * FROM YourTableName"

# Connect to SQL Server and execute the T-SQL statement
try {
    # Import the SQL Server module if not already loaded
    if (-not (Get-Module -Name SqlServer)) {
        Import-Module SqlServer
    }

    # Create the connection string
    $connectionString = "Server=$SqlServerInstance;Database=$Database;User Id=$SqlUsername;Password=$SqlPassword;"

    # Execute the T-SQL statement
    $result = Invoke-Sqlcmd -Query $TSqlQuery -ConnectionString $connectionString

    # Output the results
    $result
}
catch {
    Write-Host "Error occurred: $_.Exception.Message"
}
