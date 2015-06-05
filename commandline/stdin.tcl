#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate reading from stdin
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define prompt
puts "Eingabe: "

# read from stdin
set input [ gets stdin ]

# evaluate input
scan $input "%s %d" welcomeMessage digit

# output input data
# - first variable
puts "welcome message: $welcomeMessage"
# - second variable
puts "digit: $digit"
