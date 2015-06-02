#! /usr/bin/wish

# -----------------------------------------------------------
# sorting lists
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities
set cities "Lyon Metz Nancy Belfort Pontarlier"
puts $cities

# sort ascending, alphabetically (default setting)
# similar to: lsort -ascii -increasing
puts [ lsort $cities ]

# sort decreasing
puts [ lsort -ascii -decreasing $cities ]
