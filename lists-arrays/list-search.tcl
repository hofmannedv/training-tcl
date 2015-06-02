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
set place Hannover
set position [ lsearch $cities $place ]

# validate search result: $position > -1
if {$position > -1} {
	# output position
	puts [ format "%s is at position %d" $place $position ]
} else {
	# output error message: element not in list
	puts [ format "%s is not in the list" $place ]
}
