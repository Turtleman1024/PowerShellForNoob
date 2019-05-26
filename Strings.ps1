# Strings handling

# String Quoting
Clear-Host
"This is a string"
'This is a string too!'

# Mixed quoted
'I just wanted to say "Hello World", OK?'
"I can't find my turtle!"

# You can also double quote to get quotes in strings
"I just wanted to say ""Hello World"", OK?"
'I can''t find my turtel!'

# Escape Sequences - use the backtick

# backspace `b (have to show in real window since using the ISE)
"Turtle`bman"

# newline `n
"Turtle`nman"

# carriage return `r (doesn't really show anything)
"Turtel`rman"

# carriage return line feed `r`n
"Turtle`r`nman"

# tabs `t
"Turtle`tman"

# Here Strings - Large blocks of text
$heretext = @"
    Some text here
    Some more here
        a bit more

a blank line above
"@ # the "@ must be at the end on a newline

$heretext

 
# also works with single quotes
$moreheretext = @"
Here we go again
another line here
    let's indent this

a blank line above
"@
# note how the nested ' is handled OK, no double qouting needed
$moreheretext


# String Interpolation

Set-Location C:\
Clear-Host
$items = (Get-ChildItem).Count
$loc = Get-Location
"There are $items items are in the folder $loc."

# To actually display the variable, escpe it with a backtick
"There are `$items are in the folder `$loc."

# String interpolation only works with double quotes
'There are $items items are in the folder $loc.'

# String interpolation with here strings
$hereinterpolation = @"
Items`tFolder
-----`t-------------------
$items`t`t$loc
"@

$hereinterpolation

# Can use expressions in strings, need to be wrapped in $()
Clear-Host
"There are $((Get-ChildItem).Count) items are in teh foled $(Get-Location)."

"The 20% tip on a `$10.24 dollar bill is `$$(10.24 * 0.20) dollars."


# sTRING fORMATTING - C# like syntax is supported
# In C you'd use:
[string]::Format("There are {0} items.", $items)

# Powershell shortcuts
# -f is a formatted string flag
"There are {0} items." -f $items
"There are {0} items in the locatoin {1}." -f $items, $loc
"The 20% tip of `$256.50 dollars bill is `${0} dollars" -f (256.50 * 0.20)
"The 20% tip of `$256.50 dollars bill is `${0:0.00} dollars" -f (256.50 * 0.20)

# Wildccards in string comparisions
"Turtleman1024" -like "Turtle*"
"Turtleman1024" -like "arcane*"
"Turtleman1024" -like "?urtleman1024" # question marks work for single characters
"Turtleman1024" -like "Turtleman*[1-4]" # end in a int between 1 and 4
"Turtleman1024" -like "Turtleman*[a-z]" # end in a char between a and c

# Regulare Expressions/Pattern Matching
"555-256-1024" -match "[0-9]{3}-[0-9]{3}-[0-9]{4}"
"aaa-256-1024" -match "[0-9]{3}-[0-9]{3}-[0-9]{4}"
"555.256.1024" -match "[0-9]{3}-[0-9]{3}-[0-9]{4}"