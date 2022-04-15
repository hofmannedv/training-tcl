#! /usr/bin/tclsh

# -----------------------------------------------------------
# demonstrate reading from stdin
#o
# (C) 2015-2022 Frank Hofmann, Freiburg, Germany
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
