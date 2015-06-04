#! /usr/bin/wish

# -----------------------------------------------------------
# phone book server application
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc accept {channel address port} {
	# read data from channel
	set messageRead [ gets $channel ]

	# output received data
	puts "(phone book server) received data: $messageRead"

	# evaluate command
	set verification [ evaluateCommand $messageRead ]
	if {$verification} {
		# execute the command if valid
		set answer [ executeCommand $messageRead ]
	} else {
		set answer "error: invalid command"
	}

	# send answer
	puts $channel $answer
	puts "(phone book server) sent data: $answer"

	# close channel
	close $channel

	return
}

proc evaluateCommand {command} {
	return 1
}

proc executeCommand {command} {
	return 1
}

# -- main program -------------------------------------------

# define port
set port 34567

# initiate communication channel via socket
socket -server accept $port

# output starting message
puts "(phone book server) started listening for requests on port $port"

# initiate event loop to accept and process connections
vwait forever
