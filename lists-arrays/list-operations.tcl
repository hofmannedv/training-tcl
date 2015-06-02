#! /usr/bin/wish

# -----------------------------------------------------------
# list operations
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a list of cities
set cities "Lyon Metz Nancy Belfort"

# add another place (at the end)
lappend cities "Dijon"
puts $cities

# replace elements 2 and 3 by new values
set cities [ lreplace $cities 1 2 "Bordeaux" "Nice" ]
puts $cities

# replace element 2 to 4 by a single value
set cities [ lreplace $cities 1 3 "Valence" ]
puts $cities

# define a second list of cities
set cities2 "Toulon Moulins Colmar"

# combine these lists
set places [ concat $cities $cities2 ]
puts $places
