#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates client-server communication (server side)
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc accept {channel address port} {
	# read data from channel
	set messageRead [ gets $channel ]

	# output received data
	puts "(server) received data: $messageRead"

	# prepare answer
	set answer "Hello, client!"

	# send answer
	puts $channel $answer
	puts "(server) sent data: $answer"

	# close channel
	close $channel
}

# define port
set port 34567

# initiate communication channel via socket
socket -server accept $port

vwait forever
