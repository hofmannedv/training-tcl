#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate Hello World using Tk
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define button
# name, description, and command that is connected with the button
button .b -text "Hello, world!" -command exit

# arrange button in window
pack .b
