#! /usr/bin/wish

# -----------------------------------------------------------
# display the elements of an array
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define associative array
set address(name) "Willi Weber"
set address(road) "Elbchaussee 4"
set address(place) "Hamburg Altona"
set address(zip) 22765

# total view
puts [ array get address ]

# output the array element by element using a foreach loop
foreach item [array names address ] { \
	puts "${item}: $address($item)" \
}

# output the number of elements
set items [ array size address ]
puts "address has $items items" 
