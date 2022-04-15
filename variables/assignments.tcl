#! /usr/bin/tclsh

# -----------------------------------------------------------
# variables, assignments, and formatted output
#o
# (C) 2015-2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# single assignments
# - string value
set colour blue
# - an integer value
set size 17
# - a float value
set length 0.5

puts "colour: ${colour}"
puts "size: ${size}"
puts "length: ${length}"

# output as string
puts [ format "%s" $colour ]

# output as string, and valueputs [ format "colour %s size %d" $colour $size ]
puts [ format "colour %s size %f" $colour $size ]
# output as signed integer
puts [ format "%d" $size ]

# output as float value
puts [ format "%f" $length ]

# output as float value with 3 digits
puts [ format "%.3f" $length ]

# output as hexadecimal value
puts [ format "%x" $size ]

# output as hexadecimal value (extended)
puts [ format "%#08X" $size ]

