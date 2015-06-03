#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates the scaling widget
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define scale widget
scale .scale -from -10 -to 20 -length 200 -variable x -orient horizontal -label "The value of x" -tickinterval 5 -showvalue true

# define exit button
button .quit -text "Quit" -command exit

# training task:
# add reset button

# arrange widgets
pack .scale .quit
