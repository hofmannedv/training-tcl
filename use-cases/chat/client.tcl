#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates client-server communication (client side)
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define host
set hostname localhost

# define port
set port 34567

while {1} {

	puts -nonewline "(client): "
	flush stdout
	set message [gets stdin]

	if {$message == "quit"} {
		break
	}

	# initiate connection to server via socket
	set channel [ socket $hostname $port ]

	# send data via socket
	puts $channel $message
	flush $channel
	puts "(client) sent to server: $message"

	# receive answer message, and output answer
	set answer [ gets $channel ]
	puts "(client) received from server: $answer"

	# close channel
	close $channel
}


