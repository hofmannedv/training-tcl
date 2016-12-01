#! /usr/bin/wish

# -----------------------------------------------------------
# calculate the day of the week for a given date
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define date value as string
set currentDate "Dec 1, 2016"

# calculate the UNIX time stamp
set unixTimestamp [clock scan $currentDate -format {%b %d, %Y}]

# calculate the name of the weekday
set weekday [clock format $unixTimestamp -format {%A}]

# output message on UNIX channel stdout
puts stdout "${currentDate} is ${weekday}"
