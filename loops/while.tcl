#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate a while loop to detect odd values
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a while loop
set i 0

while {$i < 10} {

	# output odd values, only
	if {$i % 2 == 1} {
		puts $i
	}

	# increase counter
	incr i
}
