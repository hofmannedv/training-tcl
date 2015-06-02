#! /usr/bin/wish

# -----------------------------------------------------------
# transform a list into a string
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define two lists
set zipcode {14467 10245 01019}
set places {Potsdam Berlin Dresden}

# create a ":"-separated string
puts [ join $zipcode ":" ] 
