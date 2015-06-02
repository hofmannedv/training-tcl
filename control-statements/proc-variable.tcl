#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate the usage of procedures with a variable number 
# of parameters
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc total { arguments } {
	# output the given parameters
	foreach p $arguments {
		puts $p
	}
	return
}

# call procedure with parameters as a list
# - with a single parameter, only
total "Hamburg"

# - with two parameters
total "Hamburg Dresden"

# - with four parameters
total "Hamburg Dresden Leipzig Stuttgart"

