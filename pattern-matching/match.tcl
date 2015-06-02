#! /usr/bin/wish

# -----------------------------------------------------------
# pattern matching, basics
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define string
set value Hamburg

# define pattern
set pattern H*

if {[ string match $pattern $value ]} {
	puts "pattern ${pattern} found in ${value}"
}
