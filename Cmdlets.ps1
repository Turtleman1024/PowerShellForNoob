# Variable Cmdlets

Clear-Host

# Normal variable usage
$normal = 1024
$normal

$text = "Turtleman"
$text


# Powershell is really called Cmdlets behind the sceens

# Long version of $normal = 1024
New-Variable -Name var -Value 1024
$var

# Displys the variable and it's value
Get-Variable var -valueonly

Get-Variable var

# Without a params it shows all variables
Get-Variable


# Assign a new value to an existing variable
# $var = 256
Set-Variable -Name var -Value 256
$var


# Clear the contents of a variable
# Same as & var = $null
Clear-Variable -Name var
# After a clear you can still access $var, but it has no value
Get-Variable var


# Wipe out a variable
Remove-Variable -Name var
# Now var is gone, if you try to remove or clear again an error occurs



