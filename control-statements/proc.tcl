#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate the usage of procedures
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc total {operand1 operand2} {
	# calculate a sum of two operands
	set c [expr $operand1 + $operand2]
	return $c
}

# call procedure with two parameters
set sum [total 15 45]

# output result
puts "the total of 15 and 45 is $sum"
