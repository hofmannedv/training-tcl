#! /usr/bin/tclsh

# -----------------------------------------------------------
# comparing strings using string compare
#o
# (C) 2015-2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define string
set place2 "Berlin"
set place "Berlin-Wannsee"

# define default value
set result 42

set result [ string compare $place $place2 ]

if {! $result} {
	puts "comparison result: equal"
} else {
	puts "comparison result: not equal"
}
