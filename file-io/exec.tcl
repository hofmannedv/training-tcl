#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates the usage and call of external programs
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define external command
set command "uname"

# define option
set option "-a"

# do an external call
set output [ exec $command $option ]

# display output
puts $output
