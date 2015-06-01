#! /usr/bin/wish

# -----------------------------------------------------------
# how to use operators in expr
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define variables
set v1 4
set v2 15

# define mathematical operations
set addition [ expr $v1 + $v2 ]

set subtraction [ expr $v1 - $v2 ]

set product [ expr $v1 * $v2 ]

set division [ expr $v2 / $v1 ]

# modulo division
set modulo [ expr $v2 / $v1 ]

# shift right
set shiftRight [ expr $v1 >> 1 ]

# shift left
set shiftLeft [ expr $v1 << 1 ]
