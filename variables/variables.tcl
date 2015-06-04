#! /usr/bin/wish

# -----------------------------------------------------------
# variables
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define variable with integer value
set var1 2

# define variable based on another one
set var2 $var1

# define variable based on substitution in brackets
set var3 [ expr $var1 * $var2 ]

# define string values
set messagePart1 "Hello, "
set messagePart2 "world!"

# output value
# - one variable
puts $messagePart1

# - two variables (concatenated), separated by brackets
puts ${messagePart1}${messagePart2}

# - a variable concatenated with a string
puts "${messagePart1}Hamburg!"

# - output a special character
puts \$a


