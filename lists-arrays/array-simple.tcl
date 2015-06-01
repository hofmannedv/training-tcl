#! /usr/bin/wish

# -----------------------------------------------------------
# how to create an array and its single elements
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define associative array
set adresse(name) "Willi Weber"
set adresse(strasse) "Elbchaussee 4"
set adresse(ort) "Hamburg Altona"
set adresse(plz) 22765

# output its elements (access by name)
puts $adresse(name)
puts $adresse(strasse)
puts $adresse(ort)
puts $adresse(plz)

# total view
puts [ array get adresse ]
