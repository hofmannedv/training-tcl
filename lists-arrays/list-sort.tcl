#! /usr/bin/wish

# -----------------------------------------------------------
# sorting lists
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities
set cities "Potsdam Berlin Hamburg Frankfurt"
puts "unsorted: $cities"

# sort ascending, alphabetically (default setting)
# similar to: lsort -ascii -increasing
puts "sorted (increasing): [ lsort $cities ]"

# sort decreasing
puts "sorted (decreasing): [ lsort -ascii -decreasing $cities ]"

# define integer list
set postcode "14467 10245 20445 60345"

# sort by integer, decreasing
puts "sorted (decreasing): [ lsort -integer -decreasing $postcode ]"

