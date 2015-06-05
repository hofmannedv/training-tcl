#! /usr/bin/wish

# -----------------------------------------------------------
# phone book client
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define host
set hostname localhost

# define port
set port 34567

# define example requests
set request1 "getList"
set request2 "getNumber {Gustav Gnöttgen}"

# initiate connection to server via socket
set channel [ socket $hostname $port ]

# send data via socket
puts $channel $request1
flush $channel
puts "(client) sent to server: $request1"

# receive answer message, and output answer
set answer [ gets $channel ]
puts "(client) received from server: $answer"

# close channel
close $channel

# initiate connection to server via socket
set channel [ socket $hostname $port ]

# send data via socket
puts $channel $request2
flush $channel
puts "(client) sent to server: $request2"

# receive answer message, and output answer
set answer [ gets $channel ]
puts "(client) received from server: $answer"

# close channel
close $channel
