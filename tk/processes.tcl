#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate command and process cache
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define number of commands
set number 0

# define maximum cache size
set maximum 5

# define input fields
entry .command -width 30 -relief sunken -textvariable command

# arrange widgets
pack .command -padx 1m -pady 1m 

# assign keypress and entry field
bind .command <Return> {
	# increase number of commands
	set number [ expr $number + 1 ]

	# validate limit
	if {$number > $maximum} {
		# delete oldest input entry
		destroy .b[ expr $number - 5 ]
	}

	# create input button
	button .b$number -command "exec <@stdin >@stdout $command" -text $command

	# arrange widgets
	pack .b$number -fill x

	# invoke the command
	.b$number invoke

	# clear input field
	.command delete 0 end
}
