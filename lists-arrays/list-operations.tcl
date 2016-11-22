#! /usr/bin/wish

# -----------------------------------------------------------
# list operations
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities as string
set cities "Lyon Metz Nancy Belfort Pontarlier"
# define a list of postcodes, explicitly
set postcode [ list 12345 56789 26789 67100 68000 ]
puts $cities
puts $postcode

# add another place (at the end)
lappend cities "Dijon"
puts $cities

# replace elements 2 and 3 by new values
set cities [ lreplace $cities 1 2 "Avignon" "Cannes" ]
puts $cities

# replace element 2 to 4 by a single value
set cities [ lreplace $cities 1 3 "Nantes" ]
puts $cities

set postcode  [ lreplace $postcode 1 1 14467 ]
puts $postcode

# remove item by index -- replace 3rd item by nothing
set cities [ lreplace $cities 2 2 ]
puts $cities

# remove item by value: Lyon
set position [ lsearch $cities Lyon ]
set cities [ lreplace $cities $position $position ]
puts $cities

# define a second list of cities
set cities2 "Bordeaux Colmar"

# insert item at the beginning
set cities2 [ linsert $cities2 0 "Strasbourg" ]
puts $cities2

# insert item at position 1
set cities2 [ linsert $cities2 1 "Mulhouse" ]
puts $cities2

# insert one item with space at position 2 
set cities2 [ linsert $cities2 2 "Reims Marseille" ]
puts $cities2

# insert item at the end (index greater list length
set cities2 [ linsert $cities2 1356 "Toulouse" ]
puts $cities2

# combine these lists
set places [ concat $cities $cities2 ]
puts $places

# selecting the second list item
puts [ lindex $places 1 ]

# selecting from the second to the fourth list item
puts [ lrange $places 1 3 ]

# count the number of items in that list
puts [ llength $places ]
