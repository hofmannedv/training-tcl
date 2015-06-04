#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate the usage of procedures with default parameters
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc total {{operand1 0} {operand2 0}} {
	# output the given parameters
	puts "$operand1 $operand2"
	return
}

# call procedure with two parameters
# - with two parameters
total 15 45

# - with a single parameter, 2nd para has default value
total 26

# - with a single parameter, 1st para is empty
total {} 26

# - without parameters, both of them are set to default values
total

