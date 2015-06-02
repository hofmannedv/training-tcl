#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate a break and continue in a foreach loop
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define variables
set a 35
set b 24
set c 87
set d 65

# define a foreach loop based on a list
foreach value [list $a $b $c $d] {

	puts "value: $value"

	if {$value < 30} {
		# skip action, and go on with the next entry
		puts "skip $value"
		continue
	}

	if {$value > 80} {
		# quit the loop
		puts "exiting the loop"
		break
	}
}

