# Arrays

# Declaring and accessing elements
$array = "Turtle", "man"
$array[0]
$array[1]
$array


$array.GetType()

# Updating Arrays
$array = "Turtle", "boy"
$array

$array[0] = "Fish"
$array

# Formal Array Declaration Syntax
$array = @("Steve", "Rogers")
$array

# Have to using Formal Syntax to create a empty array
$array = @()
$array.Count()

# Can load arrays using numeric range notation
$array = 1..5
$array

# Check to see if an item exists
$numbers = 2, 56, 1024
$numbers -contains 56
$numbers -notcontains 128
$numbers -notcontains 56
