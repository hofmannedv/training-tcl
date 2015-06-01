#! /usr/bin/wish

# -----------------------------------------------------------
# how to create an array from a list
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities
set cities "1 Lyon 2 Metz 3 Nancy 4 Belfort"

# transform this list into an array
array set places $cities

# total view
puts [ array get places ]
