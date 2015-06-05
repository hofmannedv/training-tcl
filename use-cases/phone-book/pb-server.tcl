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

proc evaluateCommand {request} {

	# set default value: 0 for invalid command
	set result 0

	# split request into command and option
	set command [ lindex $request 0 ]
	set option [ lindex $request 1 ]

	# define valid commands
	set validCommands "getNumber getList"

	foreach value $validCommands {
		if [ string match $value $command ] {
			set result 1
			# we found a valid command, and can exit the loop
			break
		}
	}

	# return evaluation result
	return $result
}

proc executeCommand {request} {
	# split request into command and option
	set command [ lindex $request 0 ]
	set option [ lindex $request 1 ]

	# define static phone book entries
	set phoneBook "{{Wilhelm Oelgemöller} 3345} {{Dr. Walter Broermeyer} 1655} {{Gustav Gnöttgen} 3367}"

	# define default value
	set data "no entry"

	# evaluate command, and option
	switch -exact $command {
		getNumber {
			foreach entry $phoneBook {
				set name [ lindex $entry 0 ]
				set number [ lindex $entry 1 ]

				# puts "$name : $number ($option)"

				if {[ string match $name $option ]} {
					set data $number
					break
				} 
					
			}
		}

		getList { 
			set data ""
			foreach entry $phoneBook {
				set name [ lindex $entry 0 ]
				lappend data $name
			}
		}
	}

	return $data
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

