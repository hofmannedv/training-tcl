#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate a foreach loop
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define start value
set i 1

# define a foreach loop based on a list
foreach value {1 3 5 7} {
	# output interim result
	puts "interim result: $i"

	# adjust i
	set i [expr $i * $value]
}

puts "final result: $i"
