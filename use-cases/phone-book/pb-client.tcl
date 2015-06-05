#! /usr/bin/wish

# -----------------------------------------------------------
# phone book client
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc sendRequest { hostname port request } {
	# initiate connection to server via socket
	set channel [ socket $hostname $port ]

	# send data via socket
	puts $channel $request
	flush $channel
	puts "(client) sent to server: $request"

	# receive answer message, and output answer
	set answer [ gets $channel ]
	puts "(client) received from server: $answer"

	# close channel
	close $channel

	# return answer
	return $answer
}

# define host
set hostname localhost

# define port
set port 34567

# define example requests
set request1 "getList"
set request2 "getNumber {Gustav Gnöttgen}"

set answer [ sendRequest $hostname $port $request1 ]

# add listbox to display the phonebook
listbox .phoneBook -relief raised -borderwidth 2 -yscrollcommand ".scroll set"
pack .phoneBook -side left

# ... with scrollbar
scrollbar .scroll -command ".phoneBook yview"
pack .scroll -side right -fill y

# ... and quit button
button .quit -text "Quit"  -command exit
pack .quit -side bottom

# examine answer. and fill the listbox
foreach entry $answer {
	.phoneBook insert end $entry
}

# ... add message box
message .msg -justify center -text "No entry selected"
pack .msg

# bind keys: left mouse button
bind .phoneBook <Double-Button-1> {
	set selectedEntry [ selection get ]
	puts "selected value: $selectedEntry"

	set request [ list "getNumber" $selectedEntry ]

	set answer [ sendRequest $hostname $port $request ]

	# define result window with push button

	.msg config -justify center -text "$selectedEntry has the phone
number $answer"
}

# bind keys: return
bind .phoneBook <Return> {
	set selectedEntry [ selection get ]
	puts "selected value: $selectedEntry"

	set request [ list "getNumber" $selectedEntry ]

	set answer [ sendRequest $hostname $port $request ]

	# define result window with push button

	.msg config -justify center -text "$selectedEntry has the phone
number $answer"
}

