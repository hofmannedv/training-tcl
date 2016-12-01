#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates client-server communication (server side)
#o
# (C) 2015-16 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc accept {channel address port} {
	# read data from channel
	set messageRead [ gets $channel ]

	# output received data
	set answer "(server) received data: $messageRead"
	puts $answer

	# send answer
	puts $channel $answer
	puts "(server) sent data: $answer"
	
	# clear buffer
	flush $channel

	# close channel
	# close $channel
}

# define port
set port 34567

# initiate communication channel via socket
socket -server accept $port

vwait forever
