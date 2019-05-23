# This Script has examples of:
# using the *-Veriable Cmdlets
# Strings
# Arrays
# Hash Tables
# Built In Variables

# All variables state with a $. 
# Below shows a simple assignment
$hi = "Hello World"

#Print the value
$hi

Write-Host $hi

# Show the type
$hi.GetType()

# Types are mutable
Clear-host
$hi = 5
$hi.GetType()

Clear-Host
[System.Int32]$myint = 1024 # Can make strongly typed variables
Write-Host $myint
$myint.GetType()

$myint = "This will not work"


# There are shortcuts for most .net types
Clear-Host
[int] $myotherint = 1024
$myotherint.GetType()

[string] $mystring = "Turtleman1024"
$mystring.GetType()

# Others include short, float, deciaml, single, boll, byte, etc.

(1024).GetType() # Not just variables are types
"Turtleman1024".GetType()

# Accessing methods on objects
"Turtleman1024".ToUpper()
"Turtleman1024".Contains("Turtle")


# Comparisons
$var = 1024

# var > 100
$var -gt 1000 # greater than
# var < 1000
$var -lt 1000 # less than
# var == 1024
$var -eq 1024 # equals

# Other comparisons 
# -ne Not Equal to
# -le Less than or equal to
# -ge Greater then or equal to

# String comparisons
# -Like     Like wildcard pattern matching
# -NotLike  Not Like
# -Match    Matches based on regular expressions
# -NotMatch Non-Matches based on regualr expressions

# Calculations are like any other language
$var = 3 * 11 # Also +, -, and /
$var

$var++ # Supports unary operators ++ and --
$var

# Implicit Type Conversions
"1024" -eq 1024
1024 -eq "1024"

# The rule is whatever is on the right is coverted to the data type on the left
# Can lead to some odd conversion

1024 -eq "01024" # True because the string is converted to an int
"01024" -eq 1024 # False because int is converted to a string

