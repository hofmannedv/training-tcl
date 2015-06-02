#! /usr/bin/wish

# -----------------------------------------------------------
# operations on strings
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define string variable
set location Hamburg

puts "contents of location: $location"

# count the string size
set len [ string length $location ]
puts "string length: $len"

# output in upper case
set uc [ string toupper $location ]
puts "string in upper case: $uc "

# output in lower case
set lc [ string tolower $location ]
puts "string in lower case: $lc "

# output a single character
set c [ string index $location 0 ]
puts "character at position 0: $c"

# output a partial string
set r [ string range $location 1 4 ]
puts "partial string: $r"

