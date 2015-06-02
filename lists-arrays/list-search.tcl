#! /usr/bin/wish

# -----------------------------------------------------------
# search in a list
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities
set cities "Potsdam Berlin Hamburg Frankfurt"
puts "unsorted list: $cities"

# search item in list
set place Hamburg
set position [ lsearch $cities $place ]

# output position
puts [ format "%s is at position %d" $place $position ]
