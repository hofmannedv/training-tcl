#! /usr/bin/wish

# -----------------------------------------------------------
# pattern matching, basics
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define string
set place Hamburg

# define pattern with shell-like asterisk
set pattern1 H*

if {[ string match $pattern1 $place ]} {
	puts "pattern ${pattern1} found in ${place}"
}

# define pattern with a specific length
set pattern2 ??

if {[ string match $pattern2 XY ]} {
	puts "pattern ${pattern2} matches XY"
}


