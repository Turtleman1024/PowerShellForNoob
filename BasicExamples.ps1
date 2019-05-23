# Example Powershell 


# Set the execution policy so a script can be ran
# Make sure to run powershell as the admin
Set-ExecutionPolicy RemoteSigned

# Get-Command - Retrieves a list of all system commands
Get-Command

# can expand by searching for just averb or noun
Get-Command -verb "get"
Get-Command -noun "service"

# Get-Help can be used to explain a command
Get-Help Get-Command
Get-Help Get-Command -examples
Get-Help Get-Command -detailed
Get-Help Get-Command -full

# Most commands can also be passed a -? parameter to get help
Get-Command -?

# Moving around the file tree
# Get-ChildItem lists all items in the current path
Get-ChildItem

# Set-Location will change the current path
set-Location C:\Users\kmurr\Desktop\Programs
set-location "C:\Users\kmurr\Desktop\Programs\LearningReact"

# Pipelining - combine CmdLets for power
Get-ChildItem | Where-Object { $_.Length -gt 100kb }

Get-ChildItem | Where-Object { $_.Length -gt 100kb } | Sort-Object Length

# Can Break command up among several lines
# (note pipe must be last char on line)
Get-ChildItem | 
    Where-Object { $_.Length -gt 100kb } | 
    Sort-Object Length

# To specify columns in the output and get nice formatting, use Format-Table
Get-ChildItem | 
    Where-Object { $_.Length -gt 100kb } | 
    Sort-Object Length |
    Format-Table -Property Name, Length -AutoSize

# You can also use the Select-Object to retrieve certain properties from an object
Get-ChildItem | Select-Object Name, Length

#List default Providers
Clear-host
Get-PSProvider

Clear-Host
Get-PSDrive

# Move to the ENV drive
Clear-Host
Set-Location env:
Get-ChildItem

Clear-Host
Get-ChildItem | Format-Table -Property Name, Value -AutoSize

Clear-Host
Set-Location alias:
Get-ChildItem


# .Net Everywhere
$a = "I am now a PowerShell Noob"
$a
$a.Length
$a.GetType()



# Adding a new provider ------------------------------------------------------

# Show list of snap-ins
Clear-Host
Get-PSSnapin

# Show list of registered snap-ins that are available but not loaded
Clear-Host
Get-PSSnapin -Registered

# Example of load the SQL Server add-ins
Clear-Host
Add-PSSnapin SqlServerCmdletSnapin100
Add-PSSnapin SqlServerProviderSnapin100

# Validate they are loaded
Clear-Host
Get-PSSnapin -Name "Sql*"

# Show SQLServer new added to the list of drives
Get-PSDrive

Clear-Host
Set-Location SQLSERVER:
Get-ChildItem
GET-CHILDITEM | Select-Object PSChildName

# Change the location to the sql root to show the list of servers
Clear-Host
Set-Location SQL
Get-ChildItem

# Change to the server and show the list of instances
Clear-Host
Set-Location FL-WS-CON-RC01

# Change to the default Instance
Clear-Host
Set-Location DEFAULT
Get-ChildItem

# Change to the list of Databases
Clear-Host
Set-Location Databases
Get-ChildItem | Select-Object PSChildName

# Change to the database
Clear-Host
Set-Location AdventureWorksLT2008R2
Get-ChildItem | Select-Object PSChildName

# Change to the object "Tables"
Clear-Host
Set-Location Tables
Get-ChildItem | Select-Object PSChildName

# Unload the snapin
Clear-Host
Remove-PSSnapin SqlServerCmdletSnapin in100
Remove-PSSnapin SqlServerProviderSnap in100

# Validate they are loaded
Clear-Host
Get-PSSnapin | Select-Object Name
Get-PSProvider




