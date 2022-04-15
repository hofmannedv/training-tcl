#! /usr/bin/tclsh

# -----------------------------------------------------------
# demonstrates the usage of commandline parameters
#
# (C) 2015-2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# read number of arguments: argc
puts "number of arguments: $argc"

# read argument by argument: argv
foreach item $argv {
	puts "argument: $item"
}
