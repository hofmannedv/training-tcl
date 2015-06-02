#! /usr/bin/wish

# -----------------------------------------------------------
# extend an array in a for loop
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define array
set numberList(0) 0

# define a for loop from 1 to 10 step 1
for {set i 1} {$i <= 10} {incr i} {
	set numberList($i) [expr $i * $i]
}

# output array contents (unordered list)
puts [ array get numberList ]
