#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate a for loop
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a for loop from 1 to 10 step 3
for {set i 1} {$i <= 10} {incr i 3} {
	puts "value: $i"
}
