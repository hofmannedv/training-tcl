#! /usr/bin/tclsh

# -----------------------------------------------------------
# how to use commands in variables
#o
# (C) 2015-2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define string variable
set x "expr 1 + 2"

# evaluate this string variable using eval
puts "A test: [ eval $x ]"
