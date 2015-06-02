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

# define a pattern with shell-like asterisk
set pattern1 H*

if {[ string match $pattern1 $place ]} {
	puts "pattern ${pattern1} found in ${place}"
}

# define a pattern with a specific length -- no matter of the content
set pattern2 ??

if {[ string match $pattern2 XY ]} {
	puts "pattern ${pattern2} matches XY"
}

# define a regex-like pattern -- starting with either A, B or F
set pattern3 {[ABF]*}

# define list
set cities "1 Augsburg 2 Berlin 3 Dresden 4 Frankfurt 5 Hamburg"
puts $cities

# transform this list into an array
array set citiesArray $cities

foreach element [array names citiesArray] { \
	if {[ string match $pattern3 $citiesArray($element) ]} { \
		puts "match: $citiesArray($element)" \
	} \
}

