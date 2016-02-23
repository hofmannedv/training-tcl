#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates the scaling widget
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

set x 10

# define scale widget
scale .scale -from -10 -to 20 -length 200 -variable x -orient horizontal -label "The value of x" -tickinterval 5 -showvalue true

# define exit button
button .quit -text "Quit" -command exit

# training task:
# add reset button

# define reset button 
button .reset -text "Reset" -command {set x 0}

# arrange widgets
pack .scale .quit .reset -side left
